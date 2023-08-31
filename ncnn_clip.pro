QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

QMAKE_LFLAGS_RELEASE = /INCREMENTAL:NO /DEBUG

CONFIG(release, debug|release) {
    DESTDIR = $$PWD/bin/Debug
    LIBS += -L$$PWD/lib/Debug -L$$DESTDIR
    LIBS += -lopencv_calib3d -lopencv_highgui2413d -lopencv_imgproc2413d -lfreeglut -lblobAnalyze -ldbghelp -limageHelpOpenCv3 -lbgaAnalyze -lpython37
    LIBS += -lWinmm
}
else {
    QMAKE_CXXFLAGS_RELEASE = $$QMAKE_CFLAGS_RELEASE_WITH_DEBUGINFO
    QMAKE_LFLAGS_RELEASE = $$QMAKE_LFLAGS_RELEASE_WITH_DEBUGINFO
    DESTDIR = $$PWD/bin/Release
    LIBS += -L$$PWD/lib/Release -L$$DESTDIR
    LIBS += -lopencv_core2413 -lopencv_highgui2413 -lopencv_imgproc2413 -lfreeglut -lblobAnalyze -ldbghelp -limageHelpOpenCv3 -lbgaAnalyze -lpython37
    LIBS += -lWinmm
}

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
