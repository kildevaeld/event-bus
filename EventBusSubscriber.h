#pragma once

#include <QObject>

namespace Emitter
{
    class EventBusDispatcher;
    struct EventBusSubscriber
    {
        EventBusSubscriber(EventBusDispatcher *dispatcher, QObject *receiver, QObject *sender = 0);
        QObject *const receiver;
        EventBusDispatcher *const dispatcher;
        QObject *const sender;

    };
}
