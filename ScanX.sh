#!/bin/bash

# Ensure the script runs as root
if [[ $EUID -ne 0 ]]; then
    echo -e "\e[31mThis script must be run as root! To get all features, please use 'sudo ./scanner.sh'\e[0m"
    exit 1
fi

# Color variables
GREEN='\e[32m'
CYAN='\e[36m'
RED='\e[31m'
NC='\e[0m' # No color


check_tool() {
    if ! command -v $1 &> /dev/null; then
        echo -e "${RED}$1 is not installed!${NC}"
        read -p "Do you want to install $1 now? (y/n): " install_choice
        if [[ $install_choice == "y" || $install_choice == "Y" ]]; then
            sudo apt install -y $1
            echo -e "${GREEN}$1 installed successfully!${NC}"
            clear
        else
            echo -e "${RED}Skipping $1. Some features may not work correctly.${NC}"
            return 1
        fi
    fi
}

while true; do
    clear
    
    echo -e "\e[31m====================================\e[31m"
    echo -e "\e[31m  ____                 __  __       \e[31m"
    echo -e "\e[31m / ___|  ___ __ _ _ __ \ \/ /       \e[31m"
    echo -e "\e[31m \___ \ / __/ _\ | '_ \ \  /       \e[31m"
    echo -e "\e[31m  ___) | (_| (_| | | | |/  \       \e[31m"
    echo -e "\e[31m |____/ \___\__,_|_| |_/_/\_\      \e[31m"
    echo	""
    echo "===================================="
    echo -e "${CYAN} Powered by Tareq Abu Khashabeh   ${NC}"
    echo -e " GitHub: https://github.com/Tareq-Abukhashabeh"
    echo "===================================="


    echo -e "\nChoose a scan type:"
    echo "[1] Fast scan (Bash)"
    echo "[2] Deep scan (Nmap)"
    echo "[3] Netcat Port Check"
    echo "[4] Ping test"
    echo "[5] DNS Enumeration"
    echo "[6] Subdomain Enumeration"
    echo "[7] Web Vulnerability Scan"
    echo "[8] WHOIS & OSINT Lookup"
    echo "[9] Firewall Detection"
    echo "[10] Exit"

    echo -n "Enter your choice (1-10): "
    read choice

    
    bash_scan() {
        read -p "Enter target IP or domain: " target
        echo "Running fast scan using Bash..."
        scan_port() {
            (exec 3<>/dev/tcp/$target/$1) 2>/dev/null && echo "Port $1 is OPEN" && exec 3>&-
        }
        for port in {1..1024}; do
            scan_port $port &
        done
        wait
        echo "Scan complete."
    }

    nmap_scan() {
        check_tool "nmap" || return
        clear
        echo -e "\nChoose an Nmap scan type:"
        echo "[1] Quick scan (-F)"
        echo "[2] Full port scan (-p-)"
        echo "[3] Service & version detection (-sV)"
        echo "[4] OS detection (-O)"
        echo "[5] Aggressive scan (-A)"
        echo "[6] UDP scan (-sU)"
        echo "[7] Vulnerability scan using NSE scripts (--script vuln)"
        echo "[8] Custom Nmap command"
        echo "[9] Firewall Detection (-sA)"
        echo "[10] Stealth Scan (SYN -sS)"
        echo "[0] Back to Main Menu"

        echo -n "Enter your choice (0-10): "
        read nmap_choice

        read -p "Enter target IP or domain: " target
        if [[ -z "$target" ]]; then
            echo -e "${RED}Invalid target! Returning to main menu.${NC}"
            sleep 2
            return
        fi

        case $nmap_choice in
            1) nmap -F $target ;;
            2) nmap -p- $target ;;
            3) nmap -sV $target ;;
            4) nmap -O $target ;;
            5) nmap -A $target ;;
            6) nmap -sU $target ;;
            7) nmap --script=vuln $target 2>/dev/null ;;
            8) 
                read -p "Enter your custom Nmap command (without 'nmap' at the start): " custom_nmap
                [[ -z "$custom_nmap" ]] && echo -e "${RED}Invalid input! Returning to main menu.${NC}" && sleep 2 && return
                nmap $custom_nmap $target
                ;;
            9) nmap -sA $target ;;
            10) nmap -sS $target ;;
            0) return ;;  
            *) echo -e "${RED}Invalid choice. Returning to main menu...${NC}"; sleep 2 ;;
        esac
    }

    
    netcat_scan() {
        check_tool "nc" || return
        read -p "Enter target IP or domain: " target
        echo "[1] Port scan"
        echo "[2] Banner grabbing"
        read -p "Choose option (1-2): " netcat_option
        if [[ $netcat_option -eq 1 ]]; then
            read -p "Enter port range (e.g., 1-1000): " ports
            nc -zv $target $ports 2>&1 | grep "open"
        elif [[ $netcat_option -eq 2 ]]; then
            read -p "Enter port (e.g., 80, 22, 443): " port
            nc -v $target $port
        else
            echo "Invalid option"
        fi
    }

    case $choice in
        1) bash_scan ;;
        2) nmap_scan ;;
        3) netcat_scan ;;
        4) read -p "Enter target IP or domain: " target && ping -c 4 $target ;;
        5) check_tool "dnsenum" && read -p "Enter target domain: " target && dnsenum $target ;;
        6) check_tool "sublist3r" && read -p "Enter target domain: "target && sublist3r -d $target ;;
        7) check_tool "nikto" && check_tool "whatweb" && read -p "Enter target URL: " target && nikto -h $target && whatweb $target ;;
        8) check_tool "whois" && read -p "Enter target domain: " target && whois $target ;;
        9) check_tool "nmap" && read -p "Enter target IP or domain: " target && nmap -sA $target ;;
        10) echo -e "${GREEN}Don't forget to rate this tool at:${NC} ${CYAN}https://github.com/Tareq-Abukhashabeh${NC}" 
        echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice, please try again." ;;
    esac

    echo -e "\nPress Enter to restart the scanner..."
    read
done
