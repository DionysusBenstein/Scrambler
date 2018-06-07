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

    qmlRegisterType<Caesar>("com.company.caesar", 1, 0, "Caesar");
    qmlRegisterType<Morse>("com.company.morse", 1, 0, "Morse");
    qmlRegisterType<Clipboard>("com.company.clipboard", 1, 0, "Clipboard");

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}

