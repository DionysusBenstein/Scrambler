#include "Clipboard.h"

Clipboard::Clipboard(QObject *parent) : QObject(parent){}

void Clipboard::copy(const QString str) const
{
    clipboard = QApplication::clipboard();`
    clipboard->setText(str);
}
