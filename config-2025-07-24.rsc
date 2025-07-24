# jul/23/2025 23:41:20 by RouterOS 6.49.18
# software id = 
#
#
#
/interface ethernet
set [ find default-name=ether1 ] name=LAN
set [ find default-name=ether2 ] name=WAN
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip address
add address=192.168.1.2/24 interface=LAN network=192.168.1.0
add address=192.168.1.3/24 interface=WAN network=192.168.1.0
/ip dhcp-client
add disabled=no interface=LAN
/ip firewall nat
add action=masquerade chain=srcnat out-interface=WAN
/ip route
add distance=1 gateway=192.168.1.1
