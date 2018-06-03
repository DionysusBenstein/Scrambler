#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "Morse.h"
#include "Clipboard.h"

int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType<Morse>("com.company.morse", 1, 0, "Morse");
    qmlRegisterType<Clipboard>("com.company.clipboard", 1, 0, "Clipboard");
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}

