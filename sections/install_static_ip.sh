#!/bin/bash

showMessage "Setting static IP (${static_ip_address})..."

IFACE=$(ip -o route show default 2>/dev/null | awk '{print $5; exit}')
IFACE=${IFACE:-eth0}
static_dns_list=$(echo "$static_dns_address" | tr -s ' ' ',')

if command -v netplan >/dev/null 2>&1 && ls /etc/netplan/*.y*ml >/dev/null 2>&1; then
  showMessage "netplan detected, writing /etc/netplan/99-majordomo-static.yaml (interface $IFACE)"

  RENDERER=$(grep -rhoE '^[[:space:]]*renderer:[[:space:]]*[A-Za-z-]+' /etc/netplan/ 2>/dev/null | head -n 1 | awk '{print $2}')
  if [ -z "$RENDERER" ]; then
    if systemctl is-active --quiet NetworkManager; then RENDERER="NetworkManager"; else RENDERER="networkd"; fi
  fi

  dns_yaml=$(echo "$static_dns_address" | tr -s ' ' '\n' | sed 's/^/        - /')

  runSudoNoLog "cat >/etc/netplan/99-majordomo-static.yaml <<'NETPLAN'
network:
  version: 2
  renderer: ${RENDERER}
  ethernets:
    ${IFACE}:
      dhcp4: false
      addresses:
        - ${static_ip_address}/24
      routes:
        - to: default
          via: ${static_gateway_address}
      nameservers:
        addresses:
${dns_yaml}
NETPLAN"
  runSudo "chmod 600 /etc/netplan/99-majordomo-static.yaml"

  if sudo netplan generate >>"$LOG_FILE" 2>&1; then
    showMessage "netplan config is valid, applying (the SSH session may freeze for a moment)."
    runSudo "netplan apply"
  else
    showMessage "ERROR: netplan generate failed, removing the file and falling back to nmcli."
    runSudo "rm -f /etc/netplan/99-majordomo-static.yaml"
    NM_CON=$(nmcli -t -f NAME,DEVICE connection show --active 2>/dev/null | grep ":${IFACE}\$" | head -n 1 | cut -d: -f1)
    NM_CON=${NM_CON:-"Wired connection 1"}
    sudo nmcli con mod "$NM_CON" ipv4.addresses "$static_ip_address/24" ipv4.gateway "$static_gateway_address" ipv4.dns "$static_dns_list" ipv4.method "manual" >>"$LOG_FILE" 2>&1
    sudo nmcli con up "$NM_CON" >>"$LOG_FILE" 2>&1
  fi
else
  NM_CON=$(nmcli -t -f NAME,DEVICE connection show --active 2>/dev/null | grep ":${IFACE}\$" | head -n 1 | cut -d: -f1)
  if [ -z "$NM_CON" ]; then
    NM_CON=$(nmcli -t -f NAME connection show --active 2>/dev/null | head -n 1)
  fi
  NM_CON=${NM_CON:-"Wired connection 1"}
  showMessage "Using NetworkManager connection: $NM_CON"
  sudo nmcli con mod "$NM_CON" ipv4.addresses "$static_ip_address/24" ipv4.gateway "$static_gateway_address" ipv4.dns "$static_dns_list" ipv4.method "manual" >>"$LOG_FILE" 2>&1
  sudo nmcli con up "$NM_CON" >>"$LOG_FILE" 2>&1
fi

showMessage "Static IP set. Verify after reboot: ip -4 addr show $IFACE"
