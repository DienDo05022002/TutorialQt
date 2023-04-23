#include "signalslot.h"
#include <QDebug>

SignalSlot::SignalSlot(QObject *parent) : QObject(parent)
{

}

QString SignalSlot::status()
{
    return m_status;
}

void SignalSlot::mySlot()
{
    qDebug() << "Slot is calling";
    //can do something

    emit mySignal();
    //Emit do something
}

QString SignalSlot::myStatus()
{
    if(m_status == "Slot calling successfully") {
        return m_status;
    } else {
        m_status == "Slot calling successfully";
    }
//    emit mySignal();
}
