#!/bin/bash
grep -i "smtpd_tls_security_level" /etc/postfix/* 2>/dev/null || echo "STARTTLS not configured"
