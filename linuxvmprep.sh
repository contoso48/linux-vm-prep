#!/bin/bash
echo $(date) " - Linux VM Configure Proxy Script"

# If parameter #1 is "custom", the apply the proxy settings per script
# export PROXYSETTING=$1
# export HTTPPROXYENTRY="$2"
# export HTTSPPROXYENTRY="$3"
# export NOPROXYENTRY="$4"
export PROXYSETTING="custom"
export HTTPPROXYENTRY="https://10.1.15.132:8080"
export HTTSPPROXYENTRY="http://10.1.15.132:8080"
export NOPROXYENTRY=""

# Configure Proxy settings
if [[ $PROXYSETTING == "custom" ]]
then
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
fi
echo $(date) " - Configure Proxy settings complete"

# Install base packages and update system to latest packages
# echo $(date) " - Install base packages and update system to latest packages"
# yum -y install wget git net-tools bind-utils iptables-services bridge-utils bash-completion kexec-tools sos psacct
# yum -y install cloud-utils-growpart.noarch
# yum -y install ansible

# echo $(date) " - Base package insallation and updates complete"


