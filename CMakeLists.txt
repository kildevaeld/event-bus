cmake_minimum_required(VERSION 2.8.0)
if(POLICY CMP0048)
   cmake_policy(SET CMP0048 OLD)
endif()


set(PROJECT_NAME "Eventbus" CACHE STRING "Project Name")
set(PROJECT_NAME_TITLE ${PROJECT_NAME})

# Options
set(EVENTBUS_QT_VERSION 5 CACHE STRING "Qt version to use when building Eventbus (can be 4 or 5)")

project(eventbus)
# Find includes in corresponding build directories
set(CMAKE_INCLUDE_CURRENT_DIR ON)
# Instruct CMake to run moc automatically when needed.
set(CMAKE_AUTOMOC ON)

qt5_wrap_cpp(MOC
  EventBus.h
  EventBusDispatcher.h
)

set(SOURCES 
  ${MOC}
  EventBus.cpp
  EventBusSubscriber.cpp
  EventError.cpp
  EventBusDispatcher.cpp
  Event.cpp
  EventWrapper.cpp
)

set(HEADERS EventBus.h
    EventBusDispatcher.h
    EventBusSubscriber.h
    EventError.h
    Event.h
    EventWrapper.h
)

find_package(Qt5Core REQUIRED)

#SET(Boost_USE_STATIC_LIBS       ON)
#SET(Boost_USE_MULTITHREADED     ON)
#FIND_PACKAGE(Boost COMPONENTS thread system filesystem REQUIRED)
#if(Boost_FOUND)
#  include_directories(${Boost_INCLUDE_DIRS})
  #add_executable(foo foo.cc)

#endif()


add_library(eventbus ${SOURCES})

target_link_libraries(eventbus Qt5::Core)
#qt5_use_modules(eventbus Core)
#target_link_libraries(eventbus Q5t::Core)
target_include_directories(eventbus PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})