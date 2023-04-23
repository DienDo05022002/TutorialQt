#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>

class Backend : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString status READ status WRITE setStatus NOTIFY statusChanged)
public:
    explicit Backend(QObject *parent = 0);
    Q_INVOKABLE void login(QString const &userName, QString const &password);
    QString status()const;
    void setStatus(QString const &status);

signals:
    void loginSuccess();
    void loginFalse();
    void statusChanged();
private:
    QString mStatus;

public slots:
};

#endif // BACKEND_H
