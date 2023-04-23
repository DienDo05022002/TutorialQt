#ifndef SIGNALSLOT_H
#define SIGNALSLOT_H

#include <QObject>

class SignalSlot : public QObject
{
    Q_OBJECT
public:
    explicit SignalSlot(QObject *parent = 0);
    QString status();

signals:
    void mySignal();

public slots:
    void mySlot();
    QString myStatus();
private:
    QString m_status = "Hello World";
};

#endif // SIGNALSLOT_H
