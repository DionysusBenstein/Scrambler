#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "SignalsHandler.h"

int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    QObject* root = engine.rootObjects()[0];
    SignalsHandler *signalsHandler = new SignalsHandler(root);

    QObject::connect(root, SIGNAL(encryptClicked()), signalsHandler, SLOT(caesarEncrypt()));

    return app.exec();
}

