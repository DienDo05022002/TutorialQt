TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp \
    Tutorial/SignalSlot/signalslot.cpp \
    Tutorial/Authentication/backend.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    Tutorial/SignalSlot/signalslot.h \
    Tutorial/Authentication/backend.h
