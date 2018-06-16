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

    //Посимвольное прохождение по введённой строке
    for (int i = 0; i < str.length(); ++i)
    {
        //Если в введённой строке встречается пробел, то он остаётся неизменённым
        if(str[i] == ' ')
        {
            output += ' ';
        }

        //Посимвольное прохождение по английскому алфавиту в верхнем регистре
        for (int j = 0; j < high_en_alph.length(); ++j)
        {
            if (high_en_alph[j] == str[i]) //Нахождение совпадений в алфавите
            {
                if ((j + key) > 25) //Проверка на выход за границы массива
                {
                    //Сдвиг в начало алфавита при выходе за границу массива.
                    output += high_en_alph[(j - 26) + key];
                }
                else
                {
                    //Сдвиг j-элемента на key позиций вправо
                    output += high_en_alph[j + key];
                }
            }
        }

        //Посимвольное прохождение по английскому алфавиту в нижнем регистре
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

        //Посимвольное прохождение по русскому алфавиту в верхнем регистре
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

        //Посимвольное прохождение по русскому алфавиту в нижнем регистре
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

        //Посимвольное прохождение по строчке со знаками
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

        //Посимвольное прохождение по строчке с цифрами
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

    //Посимвольное прохождение по введённой строке
    for (int i = 0; i < str.length(); ++i)
    {
        //Если в введённой строке встречается пробел, то он остаётся неизменённым
        if(str[i] == ' ')
        {
            output += ' ';
        }

        //Посимвольное прохождение по английскому алфавиту в верхнем регистре
        for (int j = 0; j < high_en_alph.length(); ++j)
        {
            if (high_en_alph[j] == str[i]) //Нахождение совпадений в алфавите
            {
                if ((j - key) < 0) //Проверка на выход за границы массива
                {
                    //Сдвиг индекса в конец алфавита
                    output += high_en_alph[(j + 26) - key];
                }
                else
                {
                    //Сдвиг j-элемента на key позиций влево
                    output += high_en_alph[j - key];
                }
            }
        }

        //Посимвольное прохождение по английскому алфавиту в нижнем регистре
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

        //Посимвольное прохождение по русскому алфавиту в верхнем регистре
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

        //Посимвольное прохождение по русскому алфавиту в нижнем регистре
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

        //Посимвольное прохождение по строчке со знаками
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

        //Посимвольное прохождение по строчке с цифрами
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
