echo "CPU"
lscpu
echo "Memory"
cat /proc/meminfo
echo "System"
uname
echo "Kernel"
uname -r
echo "Distro"
uname -v
echo "Ntw.Board - IP - Mac Address"
ip addr show | awk 'function IPMAC() {if (link>"") {printf "%s - %s - %s\n", iface, inets, link}}
        $0 ~ /^[1-9]/ {IPMAC();iface=substr($2, 1, index($2, ":")-1);inets="";link=""}
        $1 == "link/ether" {link=$2}
        $1 == "inet" {inet=substr($2, 1, index($2,"/")-1); if (inets>"") inets=inets ","; inets=inets inet}
        END {IPMAC()}'
echo "Groups / Users"
cat /etc/group | awk -F: '{print $1" - "$4}' | sort
