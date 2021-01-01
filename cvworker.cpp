#include "cvworker.h"

cvWorker::cvWorker(QObject *parent) : QObject(parent)
{
  oncePrintFlag = true;
}

void cvWorker::doProcessing(cv::Mat frame)
{
    if(!frame.empty()){
        imshow("Live camera feed!",frame);
        //! Heavy processing here
        //! ............
        if(oncePrintFlag){
            qDebug()<<" Worker thread id = "<<QThread::currentThreadId();
            oncePrintFlag = false;
        }
    }

}
