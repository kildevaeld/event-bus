
LIBS += -lboost_thread \
        -lboost_system \
        -lboost_filesystem

INCLUDEPATH += /usr/local/include

CONFIG += static

QT += core 

TARGET = emitter
TEMPLATE = lib

SOURCES += EventBus.cpp  EventBusDispatcher.cpp  EventBusSubscriber.cpp  EventError.cpp  EventWrapper.cpp
HEADERS  += EventBusDispatcher.h  eventbus_global.h  EventBus.h  EventBusSubscriber.h  EventError.h  Event.h  EventWrapper.h

DISTFILES += \
    EventBus.pri \
    CMakeLists.txt




