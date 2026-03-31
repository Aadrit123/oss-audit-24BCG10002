# oss-audit-24BCG10002

## Student Details
- **Name:** Aadrit Rowmuria
- **Registration Number:** 24BCG10002
- **Course:** Open Source Software

---

## Project Overview
This repository is a documentation for "The Open Source Audit" capstone project. It contains five shell scripts demonstrating practical Linux commands and answering open source philosophies. The five scripts are written for the open source software, "LibreOffice".

---

## Script Descriptions

### 1. System Identity Report (`script1.sh`)
This script introduces the Linux system by displaying the current distribution name, kernel version, logged-in user, system uptime, and the current date/time. It concludes with a message stating the open-source license that covers the Linux kernel.

### 2. FOSS Package Inspector (`script2.sh`)
This script checks whether `libreoffice` is installed on the system. If found, it outputs the package's version, license, and summary. It also includes a philosophical note regarding the software's impact on the open-source ecosystem at the end.

### 3. Disk and Permission Auditor (`script3.sh`)
This script iterates through a predefined list of important system directories (including `/etc`, `/var/log`, and the user's LibreOffice configuration directory `~/.config/libreoffice`). It reports the directory's owner/permissions and the total disk space it consumes.

### 4. Log File Analyzer (`script4.sh`)
A diagnostic script that reads a specified log file line by line. It counts the occurrences of a specific keyword (defaulting to "error") and prints a summary. If matches are found, it also prints the last 5 lines containing that keyword.

### 5. Open Source Manifesto Generator (`script5.sh`)
An interactive script that asks the user three questions regarding their views on digital freedom and open-source tools. It takes the user's inputs and generates a personalized philosophical manifesto, saving the output to a new `.txt` file.

---

## How to Run the Scripts

### Step 1: Clone the repository
```bash
git clone https://github.com/Aadrit123/oss-audit-24BCG10002
cd oss-audit-24bcg10002
```

### Step 2: Give permission to run
```bash
chmod +x *.sh
```

### Step 3: Run scripts using ./scriptname.sh
```bash
./script1.sh
./script2.sh
./script3.sh
./script4.sh file.txt
./script5.sh
```
