#!/bin/bash
grep -E -v '^[[:space:]]*#|^[[:space:]]*$' /etc/ssh/sshd_config
