#!/bin/bash
# spotify-mako-fast.sh

mkdir -p /tmp/spotify-art-cache
last_track=""

playerctl -p spotify metadata --follow --format '{{artist}} - {{title}} {{mpris:artUrl}}' | \
while read -r line; do
    # Split ART URL
    ARTURL="${line##* }"
    TRACK_INFO="${line% *}"

    # Skip duplicate tracks
    [ "$TRACK_INFO" = "$last_track" ] && continue
    last_track="$TRACK_INFO"

    # Cache filename = hash of ARTURL
    ART_FILE="/tmp/spotify-art-cache/$(echo -n "$ARTURL" | md5sum | awk '{print $1}').png"

    # Download only if not cached
    if [ ! -f "$ART_FILE" ]; then
        wget -qO "$ART_FILE" "$ARTURL"
    fi

    # Send notification
    notify-send -i "$ART_FILE" "Now Playing" "$TRACK_INFO"
done

