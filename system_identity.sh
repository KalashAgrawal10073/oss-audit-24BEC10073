#!/bin/bash

STUDENT_NAME="Kalash Agrawal"
REG_NO="24BEC10073"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date '+%A, %d %B %Y %H:%M:%S')

OS_LICENSE="GNU General Public License v2 or later"

echo "============================================================"
echo "        Open Source Software Audit — System Identity        "
echo "============================================================"
echo ""
echo "  Student   : $STUDENT_NAME ($REG_NO)"
echo "  Auditing  : $SOFTWARE_CHOICE"
echo ""
echo "------------------------------------------------------------"
echo "  SYSTEM INFORMATION"
echo "------------------------------------------------------------"
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  User         : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date & Time  : $CURRENT_DATE"
echo ""
echo "------------------------------------------------------------"
echo "  LICENSE"
echo "------------------------------------------------------------"
echo "  This operating system (Linux) is covered under:"
echo "  $OS_LICENSE"
echo ""
echo "  GPL guarantees four freedoms:"
echo "  Run, Study, Share, and Modify the software."
echo "============================================================"
