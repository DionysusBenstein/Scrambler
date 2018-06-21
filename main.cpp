#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "Caesar.h"
#include "Morse.h"
#include "Clipboard.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

#ifdef Q_OS_ANDROID
    engine.rootContext()->setContextProperty("pt", 1,25);
#else
    engine.rootContext()->setContextProperty("pt", 1);
#endif

    qmlRegisterType<Caesar>("com.benstein.caesar", 1, 0, "Caesar");
    qmlRegisterType<Morse>("com.benstein.morse", 1, 0, "Morse");
    qmlRegisterType<Clipboard>("com.benstein.clipboard", 1, 0, "Clipboard");

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}

