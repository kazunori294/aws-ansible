DEVICE="eth0"
BOOTPROTO="static"
IPV6INIT="no"
MTU="1500"
NM_CONTROLLED="yes"
ONBOOT="yes"
TYPE="Ethernet"
IPADDR={{ ansible_eth0.ipv4.address }}
NETMASK={{ ansible_eth0.ipv4.netmask }}
GATEWAY={{ ansible_default_ipv4.gateway }}
