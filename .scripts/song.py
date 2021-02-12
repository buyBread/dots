#!/bin/bash
# just kidding, fuck bash

import dbus

try:
    spotify_bus_properties = dbus.Interface(
        dbus.SessionBus().get_object(
            "org.mpris.MediaPlayer2.spotify", "/org/mpris/MediaPlayer2"
        ), # the spotify bus
        "org.freedesktop.DBus.Properties" # the properties interface
    )
except dbus.exceptions.DBusException:
    exit()

metadata = spotify_bus_properties.Get("org.mpris.MediaPlayer2.Player", "Metadata")
playback_status = spotify_bus_properties.Get("org.mpris.MediaPlayer2.Player", "PlaybackStatus")

if metadata["xesam:artist"][0] == "":
    exit()

def get_title():
    title = metadata["xesam:title"]

    if len(title) > 24:
        shortened_title = ""
    
        for i in range(0, len(title)):
            if i >= 24:
                shortened_title += ".."
                break

            shortened_title += title[i]

        return shortened_title
    
    return title

# the fuck is xesam bitch
# why the fuck is artist an array??
print(f"{playback_status}: {metadata['xesam:artist'][0]} - {get_title()}")