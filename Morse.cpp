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
QString Morse::decrypt(const QString str)
{
    QString output;

    QStringList strList = str.split(' '); //Разделение строки на слова через пробел

    for (int i = 0; i < strList.size(); ++i)
    {
        QMap<QChar, QString>::iterator it = find_value(morse.begin(), morse.end(), strList[i]);

        if (it != morse.end())
        {
            output += it.key();
        }
    }

    return output;
}

//Метод проверки текста, что находится в строке
bool Morse::isMorse(/*QString str*/) const
{
    return false;
}
