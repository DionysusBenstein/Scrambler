/*******************************************************************/

/* Original File Name: Morse.cpp                                   */

/* Date: 03-06-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Реализация класса шифрования методом Морзе.        */

/*******************************************************************/

#include "Morse.h"

Morse::Morse(QObject *parent) : QObject(parent)
{
    morse = {
        //Latin letters
        { 'a', ".-"    },
        { 'b', "-..."  },
        { 'w', ".--"   },
        { 'g', "--."   },
        { 'd', "-.."   },
        { 'e', "."     },
        { 'v', "...-"  },
        { 'z', "--.."  },
        { 'i', ".."    },
        { 'j', ".---"  },
        { 'k', "-.-"   },
        { 'l', ".-.."  },
        { 'm', "--"    },
        { 'n', "-."    },
        { 'o', "---"   },
        { 'p', ".--."  },
        { 'r', ".-."   },
        { 's', "..."   },
        { 't', "-"     },
        { 'u', "..-"   },
        { 'f', "..-."  },
        { 'h', "...."  },
        { 'c', "-.-."  },
        { 'q', "--.-"  },
        { 'y', "-.--"  },
        { 'x', "-..-"  },
        //Numbers
        { '1', ".----" },
        { '2', "..---" },
        { '3', "...--" },
        { '4', "....-" },
        { '5', "....." },
        { '6', "-...." },
        { '7', "--..." },
        { '8', "---.." },
        { '9', "----." },
        { '0', "-----" },
        //Punctuation marks
        { '.', "......"},
        { ',', ".-.-.-"},
        { ':', "---..."},
        { ';', "-.-.-."},
        { '(', "-.--.-"},
        { ')', "-.--.-"},
        { '"', ".-.-." },
        { '-', "-....-"},
        { '/', "-..-." },
        { '?', "..--.."},
        { '!', "--..--"},
        { '@', ".--.-."},
        {'\'', ".----."},
        { ' ', "  "    }
    };
}

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
            output += "? ";
        }
    }

    return output;
}

//Метод для дешифрования текста
QString Morse::decrypt(QString str)
{
    QString output;

//    for (int i = 0; i < str.length(); ++i)
//    {
//        QMap<QChar, QString>::iterator it = find_value(morse.begin(), morse.end(), str);

//        if (it != morse.end())
//        {
//            output += it.key();
//        }
//    }

    QVector<QString> arr;
    QString delim(" ");
    int prev = 0;
    int next;
    int delta = delim.length();

    while ((next = str.contains(delim, prev)))
    {
        arr.push_back(str.mid(prev, next - prev));
        prev = next + delta;
    }
    arr.push_back(str.mid(prev));

    foreach (auto i, arr)
    {
        output += i;
    }

    return output;
}

//Метод проверки текста, что находится в строке
bool Morse::isMorse(QString str) const
{
    return true;
}
