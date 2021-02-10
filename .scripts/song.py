#!/bin/bash
# just kidding, fuck bash

import dbus

try:
    spotify_bus_properties = dbus.Interface(
        dbus.SessionBus().get_object(
            "org.mpris.MediaPlayer2.spotify", "/org/mpris/MediaPlayer2"
        ),
        "org.freedesktop.DBus.Properties"
    )
except dbus.exceptions.DBusException:
    exit("Nothing is playing")

metadata = spotify_bus_properties.Get("org.mpris.MediaPlayer2.Player", "Metadata")
playback_status = spotify_bus_properties.Get("org.mpris.MediaPlayer2.Player", "PlaybackStatus")

if metadata['xesam:artist'][0] == "":
    exit("Advertisement")

# the fuck is xesam bitch
# why the fuck is artist an array??
print(f"{playback_status}: {metadata['xesam:artist'][0]} - {metadata['xesam:title']}")