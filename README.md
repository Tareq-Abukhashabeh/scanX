# 🚀 ScanX - Advanced Network Security Scanner

**ScanX** is a powerful **all-in-one security scanner** designed for **penetration testers and cybersecurity professionals**. It combines **network scanning, web vulnerability analysis, OSINT, and firewall detection** into a single, easy-to-use tool with **on-demand tool installation** and **interactive UI**.

🔹 **Quick & Deep Network Scanning** with **Nmap & Netcat**  
🔹 **Web Security Analysis** using **Nikto & WhatWeb**  
🔹 **DNS & Subdomain Enumeration** for OSINT & Reconnaissance  
🔹 **Firewall & Vulnerability Detection** to assess security risks  

> **📌 Ethical hacking tool for security research & penetration testing only! 🚀**

---

## **🛠️ Features**
✔ **Network Scanning**
   - Quick & full port scans (Nmap)
   - OS & service detection  
   - Netcat-based port probing & banner grabbing  

✔ **Web Security Testing**
   - Website vulnerability detection (Nikto & WhatWeb)  
   - Identify technologies behind web applications  

✔ **OSINT & Reconnaissance**
   - WHOIS lookup for domain details  
   - Subdomain discovery (Sublist3r)  
   - Email & username reconnaissance (theHarvester)  

✔ **Firewall & Security Analysis**
   - Detect firewall presence  
   - Check for vulnerabilities in network configurations  

✔ **On-Demand Tool Installation**
   - Only installs missing tools when needed—no unnecessary downloads  

✔ **Simple & Interactive UI**
   - Easy menu selection—no need to memorize commands  

---

## **🎯 Who Should Use ScanX?**
✔ **Penetration Testers** – Security assessments & vulnerability scanning  
✔ **Cybersecurity Professionals** – Identify risks in networks & applications  
✔ **Bug Bounty Hunters** – Gather intelligence on web targets  
✔ **System Administrators** – Monitor open ports & firewall rules  
✔ **Red Teamers** – Conduct offensive security operations  

---

## **📌 Installation**
### **1️⃣ Clone the Repository**
```bash
git clone https://github.com/Tareq-Abukhashabeh/ScanX.git
cd ScanX
2️⃣ Give Execution Permission
bash
Copy
Edit
chmod +x scanner.sh
3️⃣ Run the Script
bash
Copy
Edit
sudo ./scanner.sh
(Root privileges are required for advanced scanning.)

🔹 Usage
📍 Run a Quick Nmap Scan
1️⃣ Select "Deep Scan (Nmap)" from the menu
2️⃣ Choose "Quick Scan (-F)"
3️⃣ Enter the target IP or domain
✅ Result: Displays open ports on the target

📍 Run a Full Port Scan
1️⃣ Choose "Deep Scan (Nmap)"
2️⃣ Select "Full Port Scan (-p-)"
3️⃣ Enter the target IP
✅ Result: Scans all 65,535 ports for open services

📍 Perform Web Vulnerability Scanning
1️⃣ Select "Web Vulnerability Scan"
2️⃣ Enter the target website URL
✅ Result: Runs Nikto & WhatWeb for security analysis

⚡ Tools Used
ScanX integrates multiple cybersecurity tools to provide comprehensive security testing:

Tool	Purpose
Nmap	Network & port scanning
Netcat	Port probing & banner grabbing
hping3	Firewall & packet analysis
whois	Domain lookup & OSINT
theHarvester	Email & username reconnaissance
dnsenum	DNS enumeration & information gathering
Nikto	Web server vulnerability scanning
WhatWeb	Web technology fingerprinting
Sublist3r	Subdomain enumeration
🔹 ScanX will automatically check if tools are installed and prompt the user to install missing ones.

📜 License
ScanX is licensed under the MIT License.
See the LICENSE file for full details.

⚠️ Disclaimer
ScanX is intended for ethical hacking, penetration testing, and cybersecurity research only.
Do not use ScanX on unauthorized systems – always obtain legal permission before scanning.
The developer is not responsible for any misuse or illegal activities.

🤝 Contributing
We welcome contributions!

Fork the repository
Create a new branch (git checkout -b feature-branch)
Commit changes (git commit -m "Added feature")
Push to GitHub (git push origin feature-branch)
Open a Pull Request (PR)
For details, check CONTRIBUTING.md.

📅 Changelog
See CHANGELOG.md for version history.

📢 Support & Feedback
📌 Issues? Suggestions? Open an issue on GitHub!
📌 Found this tool useful? 🌟 Star the repository to support development!

🔗 Follow & Connect
🔹 Author: Tareq Abu Khashabeh
🔹 GitHub: Tareq-Abukhashabeh
🔹 Website: (Optional: Add if available)
🔹 Twitter/X: (Optional: Add if available)
