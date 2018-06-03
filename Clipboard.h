/*******************************************************************/

/* Original File Name: Clipboard.cpp                               */

/* Date: 03-06-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Класс для работы с буфером обмена.                 */

/*******************************************************************/

#ifndef CLIPBOARD_H
#define CLIPBOARD_H

#include <QObject>
#include <QClipboard>

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
