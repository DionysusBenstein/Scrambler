/*******************************************************************/

/* Original File Name: Clipboard.cpp                               */

/* Date: 03-06-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Реадизация класса для работы с буфером обмена.     */

/*******************************************************************/

#include "Clipboard.h"

Clipboard::Clipboard(QObject *parent) : QObject(parent){}

void Clipboard::copy(const QString str) const
{
//    clipboard = QApplication::clipboard();
//    clipboard->setText(str);
}
