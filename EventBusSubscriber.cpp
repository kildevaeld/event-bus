#include "EventBusSubscriber.h"
#include "EventBusDispatcher.h"

namespace Emitter
{
    EventBusSubscriber::EventBusSubscriber(EventBusDispatcher *dispatcher, QObject *receiver, QObject *sender) :
        receiver(receiver),
        dispatcher(dispatcher),
        sender(sender) {}
}
