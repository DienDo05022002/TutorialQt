#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "Tutorial/SignalSlot/signalslot.h"
#include "Tutorial/Authentication/backend.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<SignalSlot> ("Qt.SignalSlot", 1, 0, "SignalSlot");
    qmlRegisterType<Backend> ("Qt.Backend", 1, 0, "MyBackend");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
