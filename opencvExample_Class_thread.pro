QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

TARGET = cameraReceiver

CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app


# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    cvworker.cpp \
    main.cpp \
    camerastreamerclass.cpp
    INCLUDEPATH += \
       # ../../../../opencv4/include
         C:/opencv43/include

    LIBS += \
        #  -L"../../../../opencv4/lib"
        -L"C:/opencv43/lib"

        # -L$$PWD/C:\\opencv4\\lib  this didnt work

    #-L$$PWD


    LIBS += \
    opencv_aruco430.lib \
    opencv_aruco430d.lib \
    opencv_bgsegm430.lib \
    opencv_bgsegm430d.lib \
    opencv_bioinspired430.lib \
    opencv_bioinspired430d.lib \
    opencv_calib3d430.lib \
    opencv_calib3d430d.lib \
    opencv_ccalib430.lib \
    opencv_ccalib430d.lib \
    opencv_core430.lib \
    opencv_core430d.lib \
    opencv_cvv430.lib \
    opencv_cvv430d.lib \
    opencv_datasets430.lib \
    opencv_datasets430d.lib \
    opencv_dnn_objdetect430.lib \
    opencv_dnn_objdetect430d.lib \
    opencv_dnn_superres430.lib \
    opencv_dnn_superres430d.lib \
    opencv_dnn430.lib \
    opencv_dnn430d.lib \
    opencv_dpm430.lib \
    opencv_dpm430d.lib \
    opencv_face430.lib \
    opencv_face430d.lib \
    opencv_features2d430.lib \
    opencv_features2d430d.lib \
    opencv_flann430.lib \
    opencv_flann430d.lib \
    opencv_fuzzy430.lib \
    opencv_fuzzy430d.lib \
    opencv_gapi430.lib \
    opencv_gapi430d.lib \
    opencv_hfs430.lib \
    opencv_hfs430d.lib \
    opencv_highgui430.lib \
    opencv_highgui430d.lib \
    opencv_img_hash430.lib \
    opencv_img_hash430d.lib \
    opencv_imgcodecs430.lib \
    opencv_imgcodecs430d.lib \
    opencv_imgproc430.lib \
    opencv_imgproc430d.lib \
    opencv_intensity_transform430.lib \
    opencv_intensity_transform430d.lib \
    opencv_line_descriptor430.lib \
    opencv_line_descriptor430d.lib \
    opencv_ml430.lib \
    opencv_ml430d.lib \
    opencv_objdetect430.lib \
    opencv_objdetect430d.lib \
    opencv_optflow430.lib \
    opencv_optflow430d.lib \
    opencv_phase_unwrapping430.lib \
    opencv_phase_unwrapping430d.lib \
    opencv_photo430.lib \
    opencv_photo430d.lib \
    opencv_plot430.lib \
    opencv_plot430d.lib \
    opencv_quality430.lib \
    opencv_quality430d.lib \
    opencv_rapid430.lib \
    opencv_rapid430d.lib \
    opencv_reg430.lib \
    opencv_reg430d.lib \
    opencv_rgbd430.lib \
    opencv_rgbd430d.lib \
    opencv_saliency430.lib \
    opencv_saliency430d.lib \
    opencv_shape430.lib \
    opencv_shape430d.lib \
    opencv_stereo430.lib \
    opencv_stereo430d.lib \
    opencv_stitching430.lib \
    opencv_stitching430d.lib \
    opencv_structured_light430.lib \
    opencv_structured_light430d.lib \
    opencv_superres430.lib \
    opencv_superres430d.lib \
    opencv_surface_matching430.lib \
    opencv_surface_matching430d.lib \
    opencv_text430.lib \
    opencv_text430d.lib \
    opencv_tracking430.lib \
    opencv_tracking430d.lib \
    opencv_video430.lib \
    opencv_video430d.lib \
    opencv_videoio430.lib \
    opencv_videoio430d.lib \
    opencv_videostab430.lib \
    opencv_videostab430d.lib \
    opencv_xfeatures2d430.lib \
    opencv_xfeatures2d430d.lib \
    opencv_ximgproc430.lib \
    opencv_ximgproc430d.lib \
    opencv_xobjdetect430.lib \
    opencv_xobjdetect430d.lib \
    opencv_xphoto430.lib \
    opencv_xphoto430d.lib

#        opencv_aruco430.lib \
#        opencv_bgsegm430.lib \
#        opencv_bioinspired430.lib \
#        opencv_calib3d430.lib \
#        opencv_ccalib430.lib \
#        opencv_core430.lib \
#        opencv_datasets430.lib \
#        opencv_dnn_objdetect430.lib \
#        opencv_dnn_superres430.lib \
#        opencv_dnn430.lib \
#        opencv_dpm430.lib \
#        opencv_face430.lib \
#        opencv_features2d430.lib \
#        opencv_flann430.lib \
#        opencv_fuzzy430.lib \
#        opencv_gapi430.lib \
#        opencv_hfs430.lib \
#        opencv_highgui430.lib \
#        opencv_img_hash430.lib \
#        opencv_imgcodecs430.lib \
#        opencv_imgproc430.lib \
#        opencv_intensity_transform430.lib \
#        opencv_line_descriptor430.lib \
#        opencv_ml430.lib \
#        opencv_objdetect430.lib \
#        opencv_optflow430.lib \
#        opencv_phase_unwrapping430.lib \
#        opencv_photo430.lib \
#        opencv_plot430.lib \
#        opencv_quality430.lib \
#        opencv_rapid430.lib \
#        opencv_reg430.lib \
#        opencv_rgbd430.lib \
#        opencv_saliency430.lib \
#        opencv_shape430.lib \
#        opencv_stereo430.lib \
#        opencv_stitching430.lib \
#        opencv_structured_light430.lib \
#        opencv_superres430.lib \
#        opencv_surface_matching430.lib \
#        opencv_text430.lib \
#        opencv_tracking430.lib \
#        opencv_video430.lib \
#        opencv_videoio430.lib \
#        opencv_videostab430.lib \
#        opencv_xfeatures2d430.lib \
#        opencv_ximgproc430.lib \
#        opencv_xobjdetect430.lib \
#        opencv_xphoto430.lib


HEADERS += \
    camerastreamerclass.h \
    cvworker.h
    # cameraReceiver.h



# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
