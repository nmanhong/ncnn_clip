QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

INCLUDEPATH += /home/loongson/nmh/ncnn/include
INCLUDEPATH += /home/loongson/nmh/ncnn/include/ncnn

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

QMAKE_CXXFLAGS_RELEASE = $$QMAKE_CFLAGS_RELEASE_WITH_DEBUGINFO
QMAKE_LFLAGS_RELEASE = $$QMAKE_LFLAGS_RELEASE_WITH_DEBUGINFO
# QMAKE_LFLAGS_RELEASE = /INCREMENTAL:NO /DEBUG

#CONFIG(release, debug|release) {
#    DESTDIR = $$PWD/bin/Debug
#    INCLUDEPATH += /home/loongson/nmh/opencvdeb/include
#    INCLUDEPATH += /home/loongson/nmh/opencvdeb/include/opencv4
#    INCLUDEPATH += /home/loongson/nmh/opencvdeb/include/opencv4/opencv2
#    LIBS += -L$$PWD/lib/Debug -L$$DESTDIR
#    LIBS += -L/home/loongson/nmh/opencvdeb/lib
#    LIBS += -lopencv_calib3d -lopencv_core -lopencv_dnn -lopencv_features2d -lopencv_flann -lopencv_gapi -lopencv_highgui -lopencv_imgcodecs -lopencv_imgproc
#    LIBS += -lopencv_ml -lopencv_objdetect -lopencv_photo -lopencv_stitching -lopencv_video -lopencv_videoio
#    LIBS += -L/home/loongson/nmh/ncnn/lib
#    LIBS += -lncnn
#}
#else {
QMAKE_CXXFLAGS_RELEASE = $$QMAKE_CFLAGS_RELEASE_WITH_DEBUGINFO
QMAKE_LFLAGS_RELEASE = $$QMAKE_LFLAGS_RELEASE_WITH_DEBUGINFO
DESTDIR = $$PWD/bin/Release
INCLUDEPATH += /home/loongson/nmh/opencvrel/include
INCLUDEPATH += /home/loongson/nmh/opencvrel/include/opencv4
INCLUDEPATH += /home/loongson/nmh/opencvrel/include/opencv4/opencv2
LIBS += -L$$PWD/lib/Release -L$$DESTDIR
LIBS += -L/home/loongson/nmh/opencvrel/lib
LIBS += -lopencv_calib3d -lopencv_core -lopencv_dnn -lopencv_features2d -lopencv_flann -lopencv_gapi -lopencv_highgui -lopencv_imgcodecs -lopencv_imgproc
LIBS += -lopencv_ml -lopencv_objdetect -lopencv_photo -lopencv_stitching -lopencv_video -lopencv_videoio
LIBS += -L/home/loongson/nmh/ncnn/lib
LIBS += -lncnn
#}

SOURCES += \
    clip.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    clip.h \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES +=
