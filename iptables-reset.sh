#!/bin/bash
iptables -P INPUT ACCEPT;
iptables -P OUTPUT ACCEPT;
iptables -P FORWARD ACCEPT;
iptables -F;
iptables -F DENYIN;
iptables -F DENYOUT;
iptables -F INVALID;
iptables -F LOGDROPIN;
iptables -F LOGDROPOUT;
iptables -F LOCALINPUT;
iptables -F LOCALOUTPUT;
iptables -F INVDROP;
iptables -X;
iptables -Z;
iptables -A OUTPUT -p tcp -j ACCEPT;
iptables -A INPUT -p tcp -j ACCEPT;
iptables-save;
