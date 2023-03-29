#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "qquickywindow.h"
#include "qquickzwindow.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    const char* uriWindow = "com.example.window";
    qmlRegisterType<QQuickZWindow>(uriWindow, 2, 15, "ZWindow");
    qmlRegisterType<QQuickYWindow>(uriWindow, 2, 15, "YWindow");

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
