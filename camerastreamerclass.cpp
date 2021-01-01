#include "camerastreamerclass.h"

cameraStreamerClass::cameraStreamerClass(QObject *parent) :
    QObject(parent),
    m_frame{ }
{
    pipeline0="udpsrc port=50050 timeout=12 ! application/x-rtp,media=video,payload=26,clock-rate=90000,encoding-name=JPEG,framerate=30/1 rtpjpegdepay ! jpegdec ! videoconvert ! appsink sync=false"; //! Listening at port 50050 for mjpeg camera encoded stream
    cameraID = 0; //! 0 for default webcam and 1 for second webcam
    pipelineOpenFlag=false;
    initSetup();

}

cameraStreamerClass::~cameraStreamerClass()
{
    delete pipeline0;
    pipeline0 = nullptr;
    workerThread.quit();
    workerThread.wait();
}

void cameraStreamerClass::initSetup()
{    
    cvWorker *worker = new cvWorker();
    qRegisterMetaType<cv::Mat>("cv::Mat");
    connect(&workerThread, &QThread::finished, worker, &QObject::deleteLater);
    connect(this, SIGNAL(cameraFrameAvailableSignal(cv::Mat)), worker, SLOT(doProcessing(cv::Mat)));
    //! Other way of doing it
    // connect(this, &cameraStreamerClass::cameraFrameAvailableSignal, worker, &cvWorker::doProcessing);
    worker->moveToThread(&workerThread);
    workerThread.start();
}

bool cameraStreamerClass::cameraOpen()
{
    cameraCap.open(cameraID);
    // cameraCap.waitAny(&cameraCap,1,100);    
    if (!cameraCap.isOpened()) {
        qDebug() <<"VideoCapture not opened";
        return false;
    }else
    {
        qDebug() <<"pipeline is opened";
        return true;
    }
}

void cameraStreamerClass::cameraFrameReceive()
{
    Mat frame;
    cameraCap.read(frame);
    frame.copyTo(m_frame);
    if (!m_frame.empty()) {
        emit cameraFrameAvailableSignal(m_frame);
    }
    else {
        m_frame = cv::Mat(cv::Size(480, 640), CV_8UC3, cv::Scalar(192, 0, 0));
        emit cameraFrameAvailableSignal(m_frame);
    }
}

