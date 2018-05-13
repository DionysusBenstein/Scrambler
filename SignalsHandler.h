/*******************************************************************/

/* Original File Name: SignalsHandler.h                            */

/* Date: 01-05-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Класс-обработчик сигналов                          */

/*******************************************************************/

#ifndef SIGNALSHANDLER_H
#define SIGNALSHANDLER_H

#include <QObject>
#include <QVariant>
#include "Caesar.h"

class SignalsHandler : public QObject
{
    Q_OBJECT
public:
    explicit SignalsHandler(QObject *parent = nullptr);

public slots:
    void caesarEncrypt();

};

#endif // SIGNALSHANDLER_H
