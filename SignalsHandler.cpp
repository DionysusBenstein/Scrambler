/*******************************************************************/

/* Original File Name: SignalsHandler.cpp                          */

/* Date: 01-05-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Реализация класса-обработчика сигналов             */

/*******************************************************************/

#include "SignalsHandler.h"

SignalsHandler::SignalsHandler(QObject *parent) : QObject(parent) {}

void SignalsHandler::caesarEncrypt()
{
    QObject* textField = this->parent()->findChild<QObject*>("textField");
    QObject* spinBox = this->parent()->findChild<QObject*>("spinBox");
    QObject* outputLabel = this->parent()->findChild<QObject*>("outoutLabel");

    Caesar caesarCipher;
    QString str = (textField->property("text")).toString();
    int key = (spinBox->property("value")).toInt();

    outputLabel->setProperty("text", caesarCipher.encrypt(str, key));
}
