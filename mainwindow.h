#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include<QDebug>
#include "clip.h"
#include <opencv2/opencv.hpp>
#include <QFileDialog>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private:
    inline cv::Mat QImageToMat(const QImage& image);
    inline QImage MatToQImage(const cv::Mat& mat);

private slots:
    void on_chooseImageFolder_clicked();
    void on_extractFeat_clicked();
    void on_go_clicked();

private:
    Ui::MainWindow *ui;
    CLIP* clip;

    QStringList gallery;

    cv::Mat image_features;
    cv::Mat text_features;
};
#endif // MAINWINDOW_H
