# 📌 ScanX Changelog



## **🚀 v1.0.0 - Initial Release** (2024-02-23)
🎉 **First official release of ScanX!**  
This version introduces a powerful, all-in-one network security scanner with multiple scanning and reconnaissance tools.

### **🔹 Core Features:**
- ✅ **Fast Scan (Bash-based port scanning)** – Quickly detects open ports using a Bash socket scanner.
- ✅ **Deep Scan using Nmap**
  - 🔍 Quick scan (`-F`)
  - 🔍 Full port scan (`-p-`)
  - 🔍 OS & service detection (`-sV`, `-O`)
  - 🔍 Aggressive mode (`-A`)
  - 🔍 UDP scanning (`-sU`)
  - 🔍 Firewall detection (`-sA`)
- ✅ **Netcat for Port Checking & Banner Grabbing**
  - 🛠 **Port scan (`nc -zv`)**
  - 🏴 **Service banner grabbing (`nc -v`)**
- ✅ **Ping Test for Network Availability** – Check if a target is online.
- ✅ **DNS Enumeration & Subdomain Discovery**
  - 🌐 Uses `dnsenum` for DNS information extraction.
  - 🔍 Uses `Sublist3r` for finding subdomains.
- ✅ **Web Vulnerability Scan**
  - 🛡️ Uses **Nikto** for web server vulnerability detection.
  - 🕵️ Uses **WhatWeb** for fingerprinting web technologies.
- ✅ **WHOIS & OSINT Lookup**
  - 🛠 Retrieves domain ownership details.
  - 📧 Uses **theHarvester** for email & username reconnaissance.
- ✅ **Firewall Detection**
  - 🔥 Checks for firewall rules using `nmap -sA`.
- ✅ **On-Demand Tool Installation**
  - 📥 Only installs missing tools when selected—no unnecessary downloads.
- ✅ **Interactive UI with a Menu-Based System**
  - 🎨 Easy navigation & user-friendly experience.

---

## **🔜 Upcoming Features (Planned)**
📌 **v1.1.0 (Next Update)**
- 🚀 **Multithreading for Faster Scanning**
  - Speeds up large scans by running multiple tasks in parallel.
- 🔍 **Shodan API Integration**
  - Allows external OSINT lookups for IP & domain reconnaissance.
- 🛡 **Brute Force & Exploitation Scripts**
  - Integrate brute-force testing tools for security testing.
- 📊 **Enhanced Output & Logging**
  - Improve scan results formatting for better readability.
- 🎯 **Export Scan Results**
  - Ability to save scan reports in `.txt` or `.csv` format.

---

## **📅 Version History**
| Version | Release Date  | Key Updates |
|---------|--------------|-------------|
| **v1.0.0** | 2024-02-23 | Initial Release 🚀 |

---

## **💡 How to Report Bugs & Request Features?**
If you find a bug or have a feature request, please open an issue:  
📌 **GitHub Issues:** [https://github.com/Tareq-Abukhashabeh/ScanX/issues](https://github.com/Tareq-Abukhashabeh/ScanX/issues)

---

## **📢 How to Update ScanX?**
To update ScanX to the latest version, run:
```bash
git pull origin main
