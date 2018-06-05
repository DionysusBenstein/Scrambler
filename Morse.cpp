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
QString Morse::encrypt(const QString str)
{
    QString output;

    for (size_t i = 0; i < str.length(); ++i)
    {
        //Letters
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
        //Punctuation marks
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

//Метод для дешифрования текста
QString Morse::decrypt(QString str)
{
    QString output;

    for (size_t i = 0; i < str.length(); ++i)
    {
        //Letters
        if (i == 0)
        {
            if (str[i] == '.' && str[i + 1] == '-' && str[i + 2] == ' ')
            {
                output += 'a';
            }
            else if (str[i] == '-' && str[i + 1] == '.' && str[i + 2] == '.' && str[i + 3] == '.' && str[i + 4] == ' ')
            {
                output += "b";
            }
            else if (str[i] == '-' && str[i + 1] == '.' && str[i + 2] == '-' && str[i + 3] == '.' && str[i + 4] == ' ')
            {
                output += "c";
            }
            else if (str[i] == '-' && str[i + 1] == '.' && str[i + 2] == '.' && str[i + 3] == ' ')
            {
                output += "d";
            }
            else if (str[i] == '.' && str[i + 1] == ' ')
            {
                output += "e";
            }
            else if (str[i] == '.' && str[i + 1] == '.' && str[i + 2] == '-' && str[i + 3] == '.' && str[i + 4] == ' ')
            {
                output += "f";
            }
            else if (str[i] == '-' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == ' ')
            {
                output += "g";
            }
            else if (str[i] == '.' && str[i + 1] == '.' && str[i + 2] == '.' && str[i + 3] == '.' && str[i + 4] == ' ')
            {
                output += "h";
            }
            else if (str[i] == '.' && str[i + 1] == '.' && str[i + 2] == ' ')
            {
                output += "i";
            }
            else if (str[i] == '.' && str[i + 1] == '-' && str[i + 2] == '-' && str[i + 3] == '-' && str[i + 4] == ' ')
            {
                output += "j";
            }
            else if (str[i] == '-' && str[i + 1] == '.' && str[i + 2] == '-' && str[i + 3] == ' ')
            {
                output += "k";
            }
            else if (str[i] == '.' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == '.' && str[i + 4] == ' ')
            {
                output += "l";
            }
            else if (str[i] == '-' && str[i + 1] == '-' && str[i + 2] == ' ')
            {
                output += "m";
            }
            else if (str[i] == '-' && str[i + 1] == '.' && str[i + 2] == ' ')
            {
                output += "n";
            }
            else if (str[i] == '-' && str[i + 1] == '-' && str[i + 2] == '-' && str[i + 3] == ' ')
            {
                output += "o";
            }
            else if (str[i] == '.' && str[i + 1] == '-' && str[i + 2] == '-' && str[i + 3] == '.' && str[i + 4] == ' ')
            {
                output += "p";
            }
            else if (str[i] == '-' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == '-' && str[i + 4] == ' ')
            {
                output += "q";
            }
            else if (str[i] == '.' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == ' ')
            {
                output += "r";
            }
            else if (str[i] == '.' && str[i + 1] == '.' && str[i + 1] == '.' && str[i + 3] == ' ')
            {
                output += "s";
            }
            else if (str[i] == "-" && str[i + 1] == ' ')
            {
                output += "t";
            }
            else if (str[i] == '.' && str[i + 1] == '.' && str[i + 2] == '-' && str[i + 3] == ' ')
            {
                output += "u";
            }
            else if (str[i] == '.' && str[i + 1] == '.' && str[i + 2] == '.'  && str[i + 3] == '-' && str[i + 4] == ' ')
            {
                output += "v";
            }
            else if (str[i] == '.' && str[i + 1] == '-' && str[i + 2] == '-' && str[i + 3] == ' ')
            {
                output += "w";
            }
            else if (str[i] == '-' && str[i + 1] == '.' &&str[i + 2] == '.' && str[i + 3] == '-' && str[i + 4] == ' ')
            {
                output += "x";
            }
            else if (str[i] == '-' && str[i + 1] == '.' && str[i + 2] == '-' && str[i + 3] == '-' && str[i + 4] == ' ')
            {
                output += "y";
            }
            else if (str[i] == '-' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == '.' && str[i + 4] == ' ')
            {
                output += "z";
            }
            //Punctuation marks
            else if (str[i] == '.' && str[i + 1] == '.' && str[i + 2] == '.' && str[i + 3] == '.' &&
                     str[i + 4] == '.' && str[i + 5] == '.')
            {
                output += ".";
            }
            else if (str[i] == '.' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == '-' &&
                     str[i + 4] == '.' && str[i + 5] == '-')
            {
                output += ",";
            }
            else if (str[i] == '-' && str[i + 1] == '.' && str[i + 2] == '.' && str[i + 3] == '.' &&
                     str[i + 4] == '.' && str[i + 5] == '-')
            {
                output += "-";
            }
            else if (str[i] == '.' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == '-' && str[i + 4] == '.')
            {
                output += "\"";
            }
            else if (str[i] == '-' && str[i + 1] == '.' && str[i + 2] == '-' && str[i + 3] == '.' &&
                     str[i + 4] == '-' && str[i + 5] == '.')
            {
                output += ";";
            }
            else if (str[i] == '-' && str[i + 1] == '-' && str[i + 2] == '-' && str[i + 3] == '.' &&
                     str[i + 4] == '.' && str[i + 5] == '.')
            {
                output += ":";
            }
            else if (str[i] == '.' && str[i + 1] == '-' && str[i + 2] == '-' && str[i + 3] == '-' &&
                     str[i + 4] == '-' && str[i + 5] == '.')
            {
                output += "\'";
            }
            else if (str[i] == '-' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == '.' &&
                     str[i + 4] == '-' && str[i + 5] == '-')
            {
                output += "!";
            }
            else if (str[i + 1] == ' ')
            {
                output += " ";
            }
        }
        else
        {
            if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '-' && str[i + 3] == ' ')
            {
                output += 'a';
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == '.' &&
                     str[i + 4] == '.' && str[i + 5] == ' ')
            {
                output += "b";
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == '-' &&
                     str[i + 4] == '.' && str[i + 5] == ' ')
            {
                output += "c";
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == '.' &&
                     str[i + 4] == ' ')
            {
                output += "d";
            }
            else if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == ' ')
            {
                output += "e";
            }
            else if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '.' && str[i + 3] == '-' &&
                     str[i + 4] == '.' && str[i + 5] == ' ')
            {
                output += "f";
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '-' && str[i + 3] == '.' &&
                     str[i + 4] == ' ')
            {
                output += "g";
            }
            else if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '.' && str[i + 3] == '.' &&
                     str[i + 4] == '.' && str[i + 5] == ' ')
            {
                output += "h";
            }
            else if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '.' && str[i + 3] == ' ')
            {
                output += "i";
            }
            else if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '-' && str[i + 3] == '-' &&
                     str[i + 4] == '-' && str[i + 5] == ' ')
            {
                output += "j";
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == '-' &&
                     str[i + 4] == ' ')
            {
                output += "k";
            }
            else if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '-' && str[i + 3] == '.' &&
                     str[i + 4] == '.' && str[i + 5] == ' ')
            {
                output += "l";
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '-' && str[i + 3] == ' ')
            {
                output += "m";
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == ' ')
            {
                output += "n";
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '-' && str[i + 3] == '-' &&
                     str[i + 4] == ' ')
            {
                output += "o";
            }
            else if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '-' && str[i + 3] == '-' &&
                     str[i + 4] == '.' && str[i + 5] == ' ')
            {
                output += "p";
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '-' && str[i + 3] == '.' &&
                     str[i + 3] == '-' && str[i + 5] == ' ')
            {
                output += "q";
            }
            else if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '-' && str[i + 3] == '.' &&
                     str[i + 4] == ' ')
            {
                output += "r";
            }
            else if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '.' && str[i + 3] == '.' &&
                     str[i + 4] == ' ')
            {
                output += "s";
            }
            else if (str[i] == ' ' && str[i + 1] == "-" && str[i + 2] == ' ')
            {
                output += "t";
            }
            else if ( str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '.' && str[i + 3] == '-' &&
                      str[i + 4] == ' ')
            {
                output += "u";
            }
            else if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '.' && str[i + 3] == '.'  &&
                     str[i + 4] == '-' && str[i + 5] == ' ')
            {
                output += "v";
            }
            else if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '-' && str[i + 3] == '-' &&
                     str[i + 4] == ' ')
            {
                output += "w";
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '.' &&str[i + 3] == '.' &&
                     str[i + 4] == '-' && str[i + 5] == ' ')
            {
                output += "x";
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == '-' &&
                     str[i + 4] == '-' && str[i + 5] == ' ')
            {
                output += "y";
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '-' && str[i + 3] == '.' &&
                     str[i + 4] == '.' && str[i + 5] == ' ')
            {
                output += "z";
            }
            //Punctuation marks
            else if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '.' && str[i + 3] == '.' &&
                     str[i + 4] == '.' && str[i + 5] == '.' && str[i + 6] == '.')
            {
                output += ".";
            }
            else if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '-' && str[i + 3] == '.' &&
                     str[i + 4] == '-' && str[i + 5] == '.' && str[i + 6] == '-')
            {
                output += ",";
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == '.' &&
                     str[i + 4] == '.' &&  str[i + 4] == '.' && str[i + 5] == '-')
            {
                output += "-";
            }
            else if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '-' && str[i + 3] == '.' &&
                     str[i + 4] == '-' && str[i + 5] == '.')
            {
                output += "\"";
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '.' && str[i + 3] == '-' &&
                     str[i + 4] == '.' && str[i + 5] == '-' && str[i + 6] == '.')
            {
                output += ";";
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '-' && str[i + 3] == '-' &&
                     str[i + 4] == '.' && str[i + 5] == '.' && str[i + 6] == '.')
            {
                output += ":";
            }
            else if (str[i] == ' ' && str[i + 1] == '.' && str[i + 2] == '-' && str[i + 3] == '-' &&
                     str[i + 4] == '-' && str[i + 5] == '-' && str[i + 6] == '.')
            {
                output += "\'";
            }
            else if (str[i] == ' ' && str[i + 1] == '-' && str[i + 2] == '-' && str[i + 3] == '.' &&
                     str[i + 4] == '.' && str[i + 5] == '-' && str[i + 6] == '-')
            {
                output += "!";
            }
            else if (str[i] == ' ' && str[i + 1] == ' ')
            {
                output += " ";
            }

            for (size_t i = 0; i < str.length(); ++i)
            {
                const QString temp = " ";

                if (str[i] == '\0')
                {
                    str += temp;
                }
            }
        }
    }
    return output;
}

//Метод проверки на то, что находится в строке
bool Morse::isMorse(const QString str)
{
    bool is_morse = true;

    for (size_t i = 0; i < str.length(); ++i)
    {
        if (str[i] >= 'A' && str[i] <= 'Z' || str[i] >= 'a' && str[i] <= 'z')
        {
            is_morse = false;
            break;
        }
        else
        {
            is_morse = true;
        }
    }

    return is_morse;
}
