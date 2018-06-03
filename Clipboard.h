#ifndef CLIPBOARD_H
#define CLIPBOARD_H

#include <QObject>
#include <QClipboard>
#include <QApplication>

class Clipboard : public QObject
{
    Q_OBJECT
public:
    explicit Clipboard(QObject *parent = nullptr);
    //Метод для копирования текста
    Q_INVOKABLE void copy(const QString str) const;

private:
    QClipboard *clipboard;
};

#endif // CLIPBOARD_H
