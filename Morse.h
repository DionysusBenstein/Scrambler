/*******************************************************************/

/* Original File Name: Caesar.cpp                                  */

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
};

#endif //MORSE_H
