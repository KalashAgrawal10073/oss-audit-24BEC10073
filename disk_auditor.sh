#!/bin/bash

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "============================================================"
echo "          Disk and Permission Auditor"
echo "============================================================"
echo ""
echo "  Checking standard system directories..."
echo "------------------------------------------------------------"

printf "  %-20s %-25s %-10s\n" "Directory" "Permissions (type owner group)" "Size"
echo "  ------------------------------------------------------------"

for DIR in "${DIRS[@]}"; do

    if [ -d "$DIR" ]; then

        PERMS=$(stat -c "%A %U %G" "$DIR")

        SIZE=$(du -sh "$DIR" 2>/dev/null | awk '{print $1}')

        printf "  %-20s %-25s %-10s\n" "$DIR" "$PERMS" "$SIZE"

    else
        printf "  %-20s %s\n" "$DIR" "DOES NOT EXIST on this system"
    fi

done

echo ""
echo "------------------------------------------------------------"
echo "  Checking Git-specific directories..."
echo "------------------------------------------------------------"

GIT_CONFIG_FILE="$HOME/.gitconfig"
GIT_SYSTEM_DIR="/etc/gitconfig"
GIT_TEMPLATE_DIR="/usr/share/git-core"

GIT_PATHS=("$GIT_CONFIG_FILE" "$GIT_SYSTEM_DIR" "$GIT_TEMPLATE_DIR")

for GPATH in "${GIT_PATHS[@]}"; do
    if [ -e "$GPATH" ]; then

        PERMS=$(stat -c "%A %U %G" "$GPATH")

        echo "  Found    : $GPATH"
        echo "  Perms    : $PERMS"
        echo ""

    else
        echo "  Not found: $GPATH (may not be configured yet)"
    fi
done

echo "------------------------------------------------------------"
echo "  Git binary location:"

if command -v git &>/dev/null; then

    GIT_BIN=$(command -v git)

    BIN_PERMS=$(stat -c "%A %U %G" "$GIT_BIN")

    echo "  Path  : $GIT_BIN"
    echo "  Perms : $BIN_PERMS"

else
    echo "  git command not found — is Git installed?"
fi

echo ""
echo "============================================================"
