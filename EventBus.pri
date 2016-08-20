
#LIBS += -lboost_thread \
#        -lboost_system \
#        -lboost_filesystem

INCLUDEPATH += $$PWD

SOURCES += $$PWD/EventBus.cpp \
           $$PWD/EventBusDispatcher.cpp \
           $$PWD/EventBusSubscriber.cpp \
           $$PWD/Event.cpp \
           $$PWD/EventError.cpp \
           $$PWD/EventWrapper.cpp \

HEADERS  += $$PWD/EventBusDispatcher.h \
    $$PWD/EventBus.h \
    $$PWD/EventBusSubscriber.h \
    $$PWD/EventError.h \
    $$PWD/Event.h \
    $$PWD/EventWrapper.h
