/*******************************************************************/

/* Original File Name: Morse.cpp                                   */

/* Date: 03-06-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Реализация класса шифрования методом Морзе.        */

/*******************************************************************/

#include "Morse.h"

Morse::Morse(QObject *parent) : QObject(parent){}

//Метод для шифрования текста
QString Morse::encrypt(QString str) const
{
    QString output;

    str = str.toLower();

    for (int i = 0; i < str.length(); ++i)
    {
        if (morse.find(str[i]) != morse.end()) {
            output += morse.find(str[i]).value() + ' ';
        } else {
            output += "?";
        }
    }

    return output;
}

//Метод для дешифрования текста
QString Morse::decrypt(QString str)
{
    QString output;
    QString temp;

    for (int i = 0; i < str.length(); ++i)
    {
        for (int j = 0; j < str.length(); ++j)
        {
            temp += str[i];

            if (temp[j] == ' ')
            {
                QMap<QChar, QString>::iterator it = find_value(morse.begin(), morse.end(), temp);

                if (it != morse.end())
                {
                    output += it.key();
                }

                temp = "";
            }
        }

//        QMap<QChar, QString>::iterator it = find_value(morse.begin(), morse.end(), str);

//        if (it != morse.end())
//        {
//            output += it.key();
//        }
    }
    return output;
}

//Метод проверки текста, что находится в строке
bool Morse::isMorse(QString str) const
{
    return true;
}
