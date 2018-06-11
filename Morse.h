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

    //Метод поиска map-ключа по значению
    template<class Iterator, class Value>
    Iterator find_value(Iterator begin, Iterator end, const Value& value)
    {
        while (begin != end)
        {
            if ((*begin) == value)
                return begin;

            ++begin;
        }
        return end;
    }

    //Метод для шифрования текста
    Q_INVOKABLE QString encrypt(QString str) const;

    //Метод для дешифрования текста
    Q_INVOKABLE QString decrypt(QString str);

    //Метод проверки на то, что находится в строке
    Q_INVOKABLE bool isMorse(const QString str) const;

private:

    QMap <QChar, QString> morse = {
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
};

#endif //MORSE_H
