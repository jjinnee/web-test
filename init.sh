#!/bin/bash

#----------------------
# text color
#----------------------
RED="\e[1;31m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
BG_RED="\e[1;41m"
BG_GREEN="\e[1;42m"
BG_YELLOW="\e[1;43m"
BG_MAGENTA="\e[1;45m"
BG_CYAN="\e[1;46m"
NC="\e[0m"

#-------------------------
# start
#-------------------------
echo
echo -e "${BG_GREEN} TEST INFO ${NC}"
read -p "ip address : " ip
read -p "domain name : " domain
echo

echo -e "${BG_GREEN} RUN ${NC}"
echo -e "${YELLOW}curl ${ip} ${NC}"
curl $ip
echo

echo -e "${YELLOW}curl ${ip} -H \"Host:\"${NC}"
curl $ip -H "Host:"
echo

echo -e "${YELLOW}curl -I ${ip}${NC}"
curl -I $ip
echo

echo -e "${YELLOW}curl ${ip}:443${NC}"
curl $ip:443
echo

echo -e "${YELLOW}curl ${domain}:443${NC}"
curl $domain:443
echo

echo -e "${YELLOW}curl ${ip} -H \"Host:different host\"${NC}"
curl $ip -H "Host:different host"
echo

echo -e "${YELLOW}curl ${ip} -H \"Host:${domain}\"${NC}"
curl $ip -H "Host:${domain}"
echo

echo -e "${YELLOW}curl ${domain} -H \"Host:${ip}\"${NC}"
curl $domain -H "Host:${ip}"
echo
