/**
 * GPLv3 license
 *
 * Copyright (c) 2021 Luca Carlon
 *
 * This file is part of Fall
 *
 * Fall is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Fall is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Fall.  If not, see <http://www.gnu.org/licenses/>.
 **/

import QtQuick 2.0
import QtMultimedia 5.0
import PiOmxTexturesVideoLayer 0.1

Rectangle {
    anchors.fill: parent
    color: "orange"
    opacity: 0.2

    Video {
        id: player
        anchors.fill: parent
        source: "file://" + mpath
        autoPlay: true
        onVlStateChanged:
            if (vlState === MediaPlayer.EndOfMedia)
                player.play()
        fillMode: Qt.KeepAspectRatio
    }
}
