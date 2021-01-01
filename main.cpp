#include<QtCore/QCoreApplication>
#include <QApplication>
#include "camerastreamerclass.h"


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    qDebug()<<"Main thread id = "<<QThread::currentThreadId();
    cameraStreamerClass cameraStreamInstance;
    if(cameraStreamInstance.cameraOpen())
    {
        qDebug()<<"camera stream available!";
        while(true)
        {   cameraStreamInstance.cameraFrameReceive();
            qApp->processEvents();
        }
    }
    else
        qDebug()<<"Camera stream not available!";

     return a.exec();
}
