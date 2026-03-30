#!/bin/bash

PACKAGE=${1:-git}

echo "============================================================"
echo "          FOSS Package Inspector"
echo "============================================================"
echo ""

if command -v "$PACKAGE" &>/dev/null; then
    echo "  Status  : $PACKAGE is INSTALLED on this system."
    echo ""

    if rpm -q "$PACKAGE" &>/dev/null; then
        echo "  --- Package Details (RPM) ---"
        rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary'

    elif dpkg -s "$PACKAGE" &>/dev/null; then
        echo "  --- Package Details (DEB) ---"
        dpkg -s "$PACKAGE" | grep -E 'Version|Maintainer|Description'

    else
        echo "  Version : $($PACKAGE --version 2>/dev/null | head -n 1)"
        echo "  License : GNU General Public License v2 (GPL v2)"
    fi

else
    echo "  Status  : $PACKAGE is NOT installed on this system."
    echo "  To install on Ubuntu/Debian : sudo apt install $PACKAGE"
    echo "  To install on Fedora/CentOS : sudo dnf install $PACKAGE"
fi

echo ""
echo "------------------------------------------------------------"
echo "  Open Source Philosophy Note"
echo "------------------------------------------------------------"

case $PACKAGE in
    git)
        echo "  Git: Built by Linus Torvalds in about two weeks."
        echo "  It was created after frustration with proprietary"
        echo "  version control systems used in Linux development."
        ;;
    httpd|apache2)
        echo "  Apache: The web server that built the open internet."
        ;;
    mysql|mariadb)
        echo "  MySQL/MariaDB: Databases powering millions of apps."
        ;;
    vlc)
        echo "  VLC: A media player that can play almost any format."
        ;;
    firefox)
        echo "  Firefox: A browser created to keep the web open."
        ;;
    *)
        echo "  $PACKAGE: An open-source tool built on the belief"
        echo "  that software should be free to use, study, and share."
        ;;
esac

echo ""
echo "============================================================"
