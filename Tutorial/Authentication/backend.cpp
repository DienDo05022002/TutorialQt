#include "backend.h"

Backend::Backend(QObject *parent) : QObject(parent)
{

}

void Backend::login(const QString &userName, const QString &password)
{
    if(userName == "dien" && password == "123") {
        emit loginSuccess();
    } else {
        setStatus("Account is not correct");
        emit loginFalse();
    }
}

QString Backend::status() const
{
    return mStatus;
}

void Backend::setStatus(const QString &status)
{
    if(mStatus == status) {
        return;
    } else {
        mStatus = status;
        emit statusChanged();
    }
}
