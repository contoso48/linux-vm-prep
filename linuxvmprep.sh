#!/bin/bash
echo $(date) " - Linux VM Configure Proxy Script"

# If parameter #1 is "custom", the apply the proxy settings per script
# export HTTPPROXYENTRY="$1"
# export HTTSPPROXYENTRY="$2"
# export NOPROXYENTRY="$3"
export HTTPPROXYENTRY="https://10.1.15.132:8080"
export HTTSPPROXYENTRY="http://10.1.15.132:8080"
export NOPROXYENTRY=""

# Configure Proxy settings
export http_proxy=$HTTPPROXYENTRY
export https_proxy=$HTTSPPROXYENTRY
echo $(date) " - Configure proxy settings - environment"
echo "export http_proxy=$HTTPPROXYENTRY
export https_proxy=$HTTSPPROXYENTRY
export no_proxy=$NOPROXYENTRY
" >> /etc/environment
echo $(date) " - Configure proxy settings - profile"
echo "export http_proxy=$HTTPPROXYENTRY
export https_proxy=$HTTSPPROXYENTRY
export no_proxy=$NOPROXYENTRY
" >> /etc/profile
echo $(date) " - Configure Proxy settings complete"
