# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = harbour-batterybuddy

CONFIG += sailfishapp

HEADERS += \
    src/battery.h \
    src/settings.h

SOURCES += src/harbour-batterybuddy.cpp \
    src/battery.cpp \
    src/settings.cpp

DISTFILES += qml/harbour-batterybuddy.qml \
    qml/cover/CoverPage.qml \
    rpm/harbour-batterybuddy.spec \
    rpm/harbour-batterybuddy.yaml \
    translations/*.ts \
    harbour-batterybuddy.desktop \
    qml/pages/MainPage.qml \
    qml/pages/AboutPage.qml \
    qml/pages/InfoPage.qml \
    rpm/harbour-batterybuddy.changes

# Begin: include sound files

#OTHER_FILES += sounds/upperLimit.ogg \
#    sounds/lowerLimit.ogg \

#DEPLOYMENT_PATH = /usr/share/$${TARGET}

#sounds.files = sounds
#sounds.path = $${DEPLOYMENT_PATH}

#INSTALLS += sounds

# End: include sound files

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/*.ts
