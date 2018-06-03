/*******************************************************************/

/* Original File Name: Morse.cpp                                   */

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
            if (str[i + 1] == ' ')
            {
                output += ".-  ";
            }
            else
            {
                output += ".- ";
            }
        }
        else if (str[i] == "B" || str[i] == "b")
        {
            if (str[i + 1] == ' ')
            {
                output += "-...  ";
            }
            else
            {
                output += "-... ";
            }
        }
        else if (str[i] == "C" || str[i] == "c")
        {
            if (str[i + 1] == ' ')
            {
                output += "-.-.  ";
            }
            else
            {
                output += "-.-. ";
            }
        }
        else if (str[i] == "D" || str[i] == "d")
        {
            if (str[i + 1] == ' ')
            {
                output += "-..  ";
            }
            else
            {
                output += "-.. ";
            }
        }
        else if (str[i] == "E" || str[i] == "e")
        {
            if (str[i + 1] == ' ')
            {
                output += ".  ";
            }
            else
            {
                output += ". ";
            }
        }
        else if (str[i] == "F" || str[i] == "f")
        {
            if (str[i + 1] == ' ')
            {
                output += "..-.  ";
            }
            else
            {
                output += "..-. ";
            }
        }
        else if (str[i] == "G" || str[i] == "g")
        {
            if (str[i + 1] == ' ')
            {
                output += "--.  ";
            }
            else
            {
                output += "--. ";
            }
        }
        else if (str[i] == "H" || str[i] == "h")
        {
            if (str[i + 1] == ' ')
            {
                output += "....  ";
            }
            else
            {
                output += ".... ";
            }
        }
        else if (str[i] == "I" || str[i] == "i")
        {
            if (str[i + 1] == ' ')
            {
                output += "..  ";
            }
            else
            {
                output += ".. ";
            }
        }
        else if (str[i] == "J" || str[i] == "j")
        {
            if (str[i + 1] == ' ')
            {
                output += ".---  ";
            }
            else
            {
                output += ".--- ";
            }
        }
        else if (str[i] == "K" || str[i] == "k")
        {
            if (str[i + 1] == ' ')
            {
                output += "-.-  ";
            }
            else
            {
                output += "-.- ";
            }
        }
        else if (str[i] == "L" || str[i] == "l")
        {
            if (str[i + 1] == ' ')
            {
                output += ".-..  ";
            }
            else
            {
                output += ".-.. ";
            }
        }
        else if (str[i] == "M" || str[i] == "m")
        {
            if (str[i + 1] == ' ')
            {
                output += "--  ";
            }
            else
            {
                output += "-- ";
            }
        }
        else if (str[i] == "N" || str[i] == "n")
        {
            if (str[i + 1] == ' ')
            {
                output += "-.  ";
            }
            else
            {
                output += "-. ";
            }
        }
        else if (str[i] == "O" || str[i] == "o")
        {
            if (str[i + 1] == ' ')
            {
                output += "---  ";
            }
            else
            {
                output += "--- ";
            }
        }
        else if (str[i] == "P" || str[i] == "p")
        {
            if (str[i + 1] == ' ')
            {
                output += ".--.  ";
            }
            else
            {
                output += ".--. ";
            }
        }
        else if (str[i] == "Q" || str[i] == "q")
        {
            if (str[i + 1] == ' ')
            {
                output += "--.-  ";
            }
            else
            {
                output += "--.- ";
            }
        }
        else if (str[i] == "R" || str[i] == "r")
        {
            if (str[i + 1] == ' ')
            {
                output += ".-.  ";
            }
            else
            {
                output += ".-. ";
            }
        }
        else if (str[i] == "S" || str[i] == "s")
        {
            if (str[i + 1] == ' ')
            {
                output += "...  ";
            }
            else
            {
                output += "... ";
            }
        }
        else if (str[i] == "T" || str[i] == "t")
        {
            if (str[i + 1] == ' ')
            {
                output += "-  ";
            }
            else
            {
                output += "- ";
            }
        }
        else if (str[i] == "U" || str[i] == "u")
        {
            if (str[i + 1] == ' ')
            {
                output += "..-  ";
            }
            else
            {
                output += "..- ";
            }
        }
        else if (str[i] == "V" || str[i] == "v")
        {
            if (str[i + 1] == ' ')
            {
                output += "...-  ";
            }
            else
            {
                output += "...- ";
            }
        }
        else if (str[i] == "W" || str[i] == "w")
        {
            if (str[i + 1] == ' ')
            {
                output += ".--  ";
            }
            else
            {
                output += ".-- ";
            }
        }
        else if (str[i] == "X" || str[i] == "x")
        {
            if (str[i + 1] == ' ')
            {
                output += "-..-  ";
            }
            else
            {
                output += "-..- ";
            }
        }
        else if (str[i] == "Y" || str[i] == "y")
        {
            if (str[i + 1] == ' ')
            {
                output += "-.--  ";
            }
            else
            {
                output += "-.-- ";
            }
        }
        else if (str[i] == "Z" || str[i] == "z")
        {
            if (str[i + 1] == ' ')
            {
                output += "--..  ";
            }
            else
            {
                output += "--.. ";
            }
        }
        else if (str[i] == ".")
        {
            if (str[i + 1] == ' ')
            {
                output += "......  ";
            }
            else
            {
                output += "...... ";
            }
        }
        else if (str[i] == ",")
        {
            if (str[i + 1] == ' ')
            {
                output += ".-.-.-  ";
            }
            else
            {
                output += ".-.-.- ";
            }
        }
        else if (str[i] == "-")
        {
            if (str[i + 1] == ' ')
            {
                output += "-....-  ";
            }
            else
            {
                output += "-....- ";
            }
        }
        else if (str[i] == "\"")
        {
            if (str[i + 1] == ' ')
            {
                output += ".-.-.  ";
            }
            else
            {
                output += ".-.-. ";
            }
        }
        else if (str[i] == ";")
        {
            if (str[i + 1] == ' ')
            {
                output += "-.-.-.  ";
            }
            else
            {
                output += "-.-.-. ";
            }
        }
        else if (str[i] == "(" || str[i] == ")")
        {
            if (str[i + 1] == ' ')
            {
                output += "-.--.-  ";
            }
            else
            {
                output += "-.--.- ";
            }
        }
        else if (str[i] == ":")
        {
            if (str[i + 1] == ' ')
            {
                output += "---...  ";
            }
            else
            {
                output += "---... ";
            }
        }
        else if (str[i] == "\'")
        {
            if (str[i + 1] == ' ')
            {
                output += ".----.  ";
            }
            else
            {
                output += ".----. ";
            }
        }
        else if (str[i] == "!")
        {
            if (str[i + 1] == ' ')
            {
                output += "--..--  ";
            }
            else
            {
                output += "--..-- ";
            }
        }
    }
    return output;
}

QString Morse::decrypt(const QString str)
{
    QString output;

    for (size_t i = 0; i < str.length(); ++i)
    {
        if (str[i] == ".-" && str[i + 1] == ' ')
        {
            output += "a";
        }
        else if (str[i] == "-..." && str[i + 1] == ' ')
        {
            output += "b";
        }
        else if (str[i] == "-.-." && str[i + 1] == ' ')
        {
            output += "c";
        }
        else if (str[i] == "-.." && str[i + 1] == ' ')
        {
            output += "d";
        }
        else if (str[i] == "." || str[i + 1] == ' ')
        {
            output += "e";
        }
        else if (str[i] == "..-." || str[i + 1] == ' ')
        {
            output += "f";
        }
        else if (str[i] == "--." || str[i + 1] == ' ')
        {
            output += "g";
        }
        else if (str[i] == "...." || str[i + 1] == ' ')
        {
            output += "h";
        }
        else if (str[i] == ".." || str[i + 1] == ' ')
        {
            output += "i";
        }
        else if (str[i] == ".---" || str[i + 1] == ' ')
        {
            output += "j";
        }
        else if (str[i] == "-.-" || str[i + 1] == ' ')
        {
            output += "k";
        }
        else if (str[i] == ".-.." || str[i + 1] == ' ')
        {
            output += "l";
        }
        else if (str[i] == "--" || str[i + 1] == ' ')
        {
            output += "m";
        }
        else if (str[i] == "-." || str[i + 1] == ' ')
        {
            output += "n";
        }
        else if (str[i] == "---" || str[i + 1] == ' ')
        {
            output += "o";
        }
        else if (str[i] == ".--." || str[i + 1] == ' ')
        {
            output += "p";
        }
        else if (str[i] == "--.-" || str[i + 1] == ' ')
        {
            output += "q";
        }
        else if (str[i] == ".-." || str[i + 1] == ' ')
        {
            output += "r";
        }
        else if (str[i] == "..." || str[i + 1] == ' ')
        {
            output += "s";
        }
        else if (str[i] == "-" || str[i + 1] == ' ')
        {
            output += "t";
        }
        else if (str[i] == "..-" || str[i + 1] == ' ')
        {
            output += "u";
        }
        else if (str[i] == "...-" || str[i + 1] == ' ')
        {
            output += "v";
        }
        else if (str[i] == ".--" || str[i + 1] == ' ')
        {
            output += "w";
        }
        else if (str[i] == "-..-" || str[i + 1] == ' ')
        {
            output += "x";
        }
        else if (str[i] == "-.--" || str[i + 1] == ' ')
        {
            output += "y";
        }
        else if (str[i] == "--.." || str[i + 1] == ' ')
        {
            output += "z";
        }
        else if (str[i] == "......" || str[i + 1] == ' ')
        {
            output += ".";
        }
        else if (str[i] == ".-.-.-" || str[i + 1] == ' ')
        {
            output += ",";
        }
        else if (str[i] == "-....-" || str[i + 1] == ' ')
        {
            output += "-";
        }
        else if (str[i] == ".-.-." || str[i + 1] == ' ')
        {
            output += "\"";
        }
        else if (str[i] == "-.-.-." || str[i + 1] == ' ')
        {
            output += ";";
        }
        else if (str[i] == "---..." || str[i + 1] == ' ')
        {
            output += ":";
        }
        else if (str[i] == ".----." || str[i + 1] == ' ')
        {
            output += "\'";
        }
        else if (str[i] == "--..--" || str[i + 1] == ' ')
        {
            output += "!";
        }
    }
    return output;
}

bool Morse::isMorse(const QString str)
{
    for (size_t i = 0; i < str.length(); ++i)
    {
        for (size_t j = 0; j < str.length(); ++j)
        {
            return str[i] == alph[j] ? false : true;
        }
    }
}
