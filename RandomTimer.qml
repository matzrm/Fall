import QtQuick 2.0

Timer {
    interval: 0
    running: true
    repeat: false

    function restart(maxDelay) {
        interval = Math.random()*maxDelay
        start()
    }
}