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
#include <QMap>

class Morse : public QObject
{
    Q_OBJECT

public:
    explicit Morse(QObject *parent = nullptr);

    //Метод для шифрования текста
    Q_INVOKABLE QString encrypt(const QString str);

    //Метод для дешифрования текста
    Q_INVOKABLE QString decrypt(const QString str);

    //Метод проверки на то, что находится в строке
    Q_INVOKABLE bool isMorse(const QString str);

private:
    QString alph = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!\"#$%^&*()+=-_'?.,|/`~№:;@[]{}";

    /*
    QMap <char, QString> morse = {
            { 'a', ".-"},
            { 'b', "-..."},
            { 'w', ".--"},
            { 'g', "--."},
            { 'd', "-.."},
            { 'e', "."},
            { 'v', "...-"},
            { 'z', "--.."},
            { 'i', ".."},
            { 'j', ".---"},
            { 'k', "-.-"},
            { 'l', ".-.."},
            { 'm', "--"},
            { 'n', "-."},
            { 'o', "---"},
            { 'p', ".--."},
            { 'r', ".-."},
            { 's', "..."},
            { 't', "-"},
            { 'u', "..-"},
            { 'f', "..-."},
            { 'h', "...."},
            { 'c', "-.-."},
            { 'q', "--.-"},
            { 'y', "-.--"},
            { 'x', "-..-"},
            { '1', ".----"},
            { '2', "..---"},
            { '3', "...--"},
            { '4', "....-"},
            { '5', "....."},
            { '6', "-...."},
            { '7', "--..."},
            { '8', "---.."},
            { '9', "----."},
            { '0', "-----"},
            { '.', "......"},
            { ',', ".-.-.-"},
            { ':', "---..."},
            { ';', "-.-.-."},
            { '(', "-.--.-"},
            { ')', "-.--.-"},
            { '"', ".-..-."},
            { '-', "-....-"},
            { '/', "-..-."},
            { '?', "..--.."},
            { '!', "--..--"},
            { ' ', "-...-"},
            { '@', ".--.-."},
    };
    */
};

#endif //MORSE_H
