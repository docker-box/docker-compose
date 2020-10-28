#!/bin/env bash
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @         WARNING: UNPROTECTED PRIVATE KEY FILE!          @
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# Permissions 0644 for '/home/user/.ssh/id_rsa' are too open.
# It is recommended that your private key files are NOT accessible by others.
# This private key will be ignored.
# bad permissions: ignore key: /home/user/.ssh/id_rsa

chmod 755 ~/.ssh/
chmod 600 ~/.ssh/id_rsa ~/.ssh/id_rsa.pub
chmod 644 ~/.ssh/known_hosts