#ifndef CVWORKER_H
#define CVWORKER_H

#include <QObject>
#include <QtCore>
#include <opencv2/opencv.hpp>
class cvWorker : public QObject
{
    Q_OBJECT
public:
    explicit cvWorker(QObject *parent = nullptr);

signals:

public slots:
    void doProcessing(cv::Mat frame);

private:
    bool oncePrintFlag;

};

#endif // CVWORKER_H
