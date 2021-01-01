#ifndef CAMERASTREAMERCLASS_H
#define CAMERASTREAMERCLASS_H

#include <QObject>
#include <QtCore>
#include <opencv2/opencv.hpp>
#include <iostream>
#include "cvworker.h"

using namespace std;
using namespace cv;

class cameraStreamerClass : public QObject
{
    Q_OBJECT
public:
    explicit cameraStreamerClass(QObject *parent = nullptr);
    bool pipelineOpenFlag;

    ~cameraStreamerClass();

public slots:
    void initSetup();
    bool cameraOpen();
    void cameraFrameReceive();
   // const cv::Mat cameraFrameAvailable();

signals:
    void cameraFrameAvailableSignal(cv::Mat frame);

private:
    const char* pipeline0;
    int cameraID;
    VideoCapture cameraCap;
    Mat m_frame;
    Mat temp;
    QThread workerThread;
    // bool pipelineOpenFlag;
   // QTimer *timer;


};

#endif // CAMERASTREAMERCLASS_H
