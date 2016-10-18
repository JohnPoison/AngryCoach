TEMPLATE = app

QT += core qml quick widgets

CONFIG += c++11

SOURCES += $$PWD/thirdParty/jenson/src/*.cpp \
    Ingredient.cpp \
    Food.cpp \
    Calories.cpp
SOURCES += main.cpp

RESOURCES += qml.qrc

INCLUDEPATH += $$PWD/thirdParty
INCLUDEPATH += $$PWD/thirdParty/jenson/src

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH += material/src
QML2_IMPORT_PATH += material/src
QML_IMPORT_PATH += "qrc:/"
QML2_IMPORT_PATH += "qrc:/"

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    Ingredient.h \
    Food.h \
    Calories.h