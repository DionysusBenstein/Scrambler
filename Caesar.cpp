/*******************************************************************/

/* Original File Name: Caesar.cpp                                  */

/* Date: 11-05-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Реализация класса шифрования методом Цезаря.       */

/*******************************************************************/

#include "Caesar.h"

Caesar::Caesar(QObject *parent) : QObject(parent)
{
    high_en_alph  =  "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    low_en_alph   =  "abcdefghijklmnopqrstuvwxyz";
    high_ru_alph  =  "АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ";
    low_ru_alph   =  "абвгдеёжзийклмнопрстуфхцчшщъыьэюя";
    signs         =  "!\"#$%^&*()+=-_'?.,|/`~№:;@[]{}";
    numbers       =  "0123456789";
}

//Метод шифрования текста
QString Caesar::encrypt(const QString str, const int key) const
{
    QString output;

    for (int i = 0; i < str.length(); ++i)
    {
        if(str[i] == ' ')
        {
            output += ' ';
        }

        for (int j = 0; j < high_en_alph.length(); ++j)
        {
            if (high_en_alph[j] == str[i])
            {
                if ((j + key) > 25)
                {
                    output += high_en_alph[(j - 26) + key];
                }
                else
                {
                    output += high_en_alph[j + key];
                }
            }
        }

        for (int j = 0; j < low_en_alph.length(); ++j)
        {
            if (low_en_alph[j] == str[i])
            {
                if ((j + key) > 25)
                {
                    output += low_en_alph[(j - 26) + key];
                }
                else
                {
                    output += low_en_alph[j + key];
                }
            }
        }

        for (int j = 0; j < high_ru_alph.length(); ++j)
        {
            if (high_ru_alph[j] == str[i])
            {
                if ((j + key) > 32)
                {
                    output += high_ru_alph[(j - 33) + key];
                }
                else
                {
                    output += high_ru_alph[j + key];
                }
            }
        }

        for (int j = 0; j < low_ru_alph.length(); ++j)
        {
            if (low_ru_alph[j] == str[i])
            {
                if ((j + key) > 32)
                {
                    output += low_ru_alph[(j - 33) + key];
                }
                else
                {
                    output += low_ru_alph[j + key];
                }
            }
        }

        for (int j = 0; j < signs.length(); ++j)
        {
            if (signs[j] == str[i])
            {
                if ((j + key) > 29)
                {
                    output += signs[(j - 30) + key];
                }
                else
                {
                    output += signs[j + key];
                }
            }
        }

        for (int j = 0; j < numbers.length(); ++j)
        {
            if (numbers[j] == str[i])
            {
                if ((j + key) > 9)
                {
                    output += numbers[(j - 10) + key];
                }
                else
                {
                    output += numbers[j + key];
                }
            }
        }
    }
    return output;
}

//Метод дешифрования текста
QString Caesar::decrypt(const QString str, const int key) const
{
    QString output;

    for (int i = 0; i < str.length(); ++i)
    {
        if(str[i] == ' ')
        {
            output += ' ';
        }

        for (int j = 0; j < high_en_alph.length(); ++j)
        {
            if (high_en_alph[j] == str[i])
            {
                if ((j - key) < 0)
                {
                    output += high_en_alph[(j + 26) - key];
                }
                else
                {
                    output += high_en_alph[j - key];
                }
            }
        }

        for (int j = 0; j < low_en_alph.length(); ++j)
        {
            if (low_en_alph[j] == str[i])
            {
                if ((j - key) < 0)
                {
                    output += low_en_alph[(j + 26) - key];
                }
                else
                {
                    output += low_en_alph[j - key];
                }
            }
        }

        for (int j = 0; j < high_ru_alph.length(); ++j)
        {
            if (high_ru_alph[j] == str[i])
            {
                if ((j - key) < 0)
                {
                    output += high_ru_alph[(j + 33) - key];
                }
                else
                {
                    output += high_ru_alph[j - key];
                }
            }
        }

        for (int j = 0; j < low_ru_alph.length(); ++j)
        {
            if (low_ru_alph[j] == str[i])
            {
                if ((j - key) < 0)
                {
                    output += low_ru_alph[(j + 33) - key];
                }
                else
                {
                    output += low_ru_alph[j - key];
                }
            }
        }

        for (int j = 0; j < signs.length(); ++j)
        {
            if (signs[j] == str[i])
            {
                if ((j - key) < 0)
                {
                    output += signs[(j + 30) - key];
                }
                else
                {
                    output += signs[j - key];
                }
            }
        }

        for (int j = 0; j < numbers.length(); ++j)
        {
            if (numbers[j] == str[i])
            {
                if ((j + key) < 0)
                {
                    output += numbers[(j + 10) - key];
                }
                else
                {
                    output += numbers[j - key];
                }
            }
        }
    }
    return output;
}
