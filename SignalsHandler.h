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

class SignalsHandler : public QObject
{
    Q_OBJECT
public:
    explicit SignalsHandler(QObject *parent = nullptr);

signals:

public slots:
};

#endif // SIGNALSHANDLER_H
