SUMMARY = "A PyQt5 development image"

require qt5-basic-image.bb

QT_TOOLS += " \
    python3-pyqt5 \
"

export IMAGE_BASENAME = "python3-qt5-image"
