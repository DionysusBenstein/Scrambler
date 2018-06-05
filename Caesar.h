/*******************************************************************/

/* Original File Name: Caesar.cpp                                  */

/* Date: 11-05-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Класс шифрования методом Цезаря.                   */

/*******************************************************************/

#ifndef CAESAR_H
#define CAESAR_H

#include <QObject>

class Caesar : public QObject
{
    Q_OBJECT
public:
    explicit Caesar(QObject *parent = nullptr);
    //Метод шифрования текста
    QString encrypt(QString str, int key);
    //Метод дешифрования текста
    QString decrypt(QString str, int key);

private:
    //Инициализация строк с алфавитом, знаками и цифрами
    QString high_en_alph = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    QString low_en_alph = "abcdefghijklmnopqrstuvwxyz";
    QString high_ru_alph = "АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ";
    QString low_ru_alph = "абвгдеёжзийклмнопрстуфхцчшщъыьэюя";
    QString signs = "!\"#$%^&*()+=-_'?.,|/`~№:;@[]{}";
    QString numbers = "0123456789";
};

#endif // CAESAR_H