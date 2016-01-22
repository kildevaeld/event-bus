

QT += core 

TARGET = emitter
TEMPLATE = lib

DESTDIR = build
SOURCES += EventBus.cpp  EventBusDispatcher.cpp  EventBusSubscriber.cpp  Event.cpp  EventError.cpp  EventWrapper.cpp

HEADERS  += EventBusDispatcher.h  eventbus_global.h  EventBus.h  EventBusSubscriber.h  EventError.h  Event.h  EventWrapper.h




