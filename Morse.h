/*******************************************************************/

/* Original File Name: Morse.cpp                                   */

/* Date: 03-06-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Класс шифрования методом Морзе.                    */

/*******************************************************************/

#ifndef MORSE_H
#define MORSE_H

#include <QObject>

class Morse : public QObject
{
    Q_OBJECT

public:
    explicit Morse(QObject *parent = nullptr);

    //Метод для шифрования текста
    Q_INVOKABLE QString encrypt(const QString str);

    //Метод для дешифрования текста
    Q_INVOKABLE QString decrypt(const QString str);

    //Метод проверки на обычный текст или шифр морзе
    Q_INVOKABLE bool isMorse(const QString str);

private:
    QString alph = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!\"#$%^&*()+=-_'?.,|/`~№:;@[]{}";
};

#endif //MORSE_H
