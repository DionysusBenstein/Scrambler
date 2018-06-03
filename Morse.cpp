/*******************************************************************/

/* Original File Name: Caesar.cpp                                  */

/* Date: 03-06-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Реализация класса шифрования методом Морзе.        */

/*******************************************************************/

#include "Morse.h"

Morse::Morse(QObject *parent) : QObject(parent){}

QString Morse::encrypt(const QString str)
{
    QString output;

    for (size_t i = 0; i < str.length(); ++i)
    {
        if (str[i] == "A" || str[i] == "a")
        {
            output += ".-";
        }
        else if (str[i] == "B" || str[i] == "b")
        {
            output += "-...";
        }
        else if (str[i] == "C" || str[i] == "c")
        {
            output += "-.-.";
        }
        else if (str[i] == "D" || str[i] == "d")
        {
            output += "-..";
        }
        else if (str[i] == "D" || str[i] == "d")
        {
            output += "-..";
        }
        else if (str[i] == "E" || str[i] == "e")
        {
            output += ".";
        }
        else if (str[i] == "F" || str[i] == "f")
        {
            output += "..-.";
        }
        else if (str[i] == "G" || str[i] == "g")
        {
            output += "--.";
        }
        else if (str[i] == "H" || str[i] == "h")
        {
            output += "....";
        }
        else if (str[i] == "I" || str[i] == "i")
        {
            output += "..";
        }
        else if (str[i] == "J" || str[i] == "j")
        {
            output += ".---";
        }
        else if (str[i] == "K" || str[i] == "k")
        {
            output += "-.-";
        }
        else if (str[i] == "L" || str[i] == "l")
        {
            output += ".-..";
        }
        else if (str[i] == "M" || str[i] == "m")
        {
            output += "--";
        }
        else if (str[i] == "N" || str[i] == "n")
        {
            output += "-.";
        }
        else if (str[i] == "O" || str[i] == "o")
        {
            output += "---";
        }
        else if (str[i] == "P" || str[i] == "p")
        {
            output += ".--.";
        }
        else if (str[i] == "Q" || str[i] == "q")
        {
            output += "--.-";
        }
        else if (str[i] == "R" || str[i] == "r")
        {
            output += ".-.";
        }
        else if (str[i] == "S" || str[i] == "s")
        {
            output += "...";
        }
        else if (str[i] == "T" || str[i] == "t")
        {
            output += "-";
        }
        else if (str[i] == "U" || str[i] == "u")
        {
            output += "..-";
        }
        else if (str[i] == "V" || str[i] == "v")
        {
            output += "...-";
        }
        else if (str[i] == "W" || str[i] == "w")
        {
            output += ".--";
        }
        else if (str[i] == "X" || str[i] == "x")
        {
            output += "-..-";
        }
        else if (str[i] == "Y" || str[i] == "y")
        {
            output += "-.--";
        }
        else if (str[i] == "Z" || str[i] == "z")
        {
            output += "--..";
        }
    }
    return output;
}
