![Bash](https://img.shields.io/badge/Shell-Bash-green)
![License](https://img.shields.io/badge/License-GPLv2-blue)

# OSS Audit — Git

### Open Source Software | VIT | Capstone Project

---

## Student Details

| Field                          | Details                                |
| ------------------------------ | -------------------------------------- |
| **Name**                       | Kalash Agrawal                         |
| **Registration Number**        | 24BEC10073                             |
| **Course**                     | Open Source Software                   |
| **Chosen Software**            | Git                                    |
| **License of Chosen Software** | GNU General Public License v2 (GPL v2) |

---

## About This Project

This repository contains five shell scripts written as part of the Open Source Software audit capstone project.

The scripts demonstrate practical Linux command-line and Bash scripting skills while auditing and interacting with **Git — the open-source distributed version control system created by Linus Torvalds in 2005.**

---

## Repository Structure

```
oss-audit-24BEC10073/
│
├── script1_system_identity.sh
├── script2_package_inspector.sh
├── script3_disk_auditor.sh
├── script4_log_analyzer.sh
├── script5_manifesto.sh
│
└── README.md
```

---

## Scripts Overview

### Script 1 — System Identity Report

**File:** `script1_system_identity.sh`

Displays a welcome screen showing the Linux distribution name, kernel version, currently logged-in user, home directory, system uptime, current date and time, and the open-source license that covers the operating system.

**Concepts used:** Variables, `echo`, command substitution `$()`, output formatting.

---

### Script 2 — FOSS Package Inspector

**File:** `script2_package_inspector.sh`

Checks whether Git is installed on the system, retrieves its version and license information, and uses a case statement to print a philosophy note about the chosen package.

**Concepts used:** `if-then-else`, `case` statement, `rpm` / `dpkg`, pipe with `grep`.

---

### Script 3 — Disk and Permission Auditor

**File:** `script3_disk_auditor.sh`

Loops through a list of important Linux system directories and reports the permissions, ownership (user and group), and disk usage of each. It also checks Git-specific paths such as the Git binary location and configuration files.

**Concepts used:** `for` loop, `du`, `ls -ld`, `awk`, `cut`.

---

### Script 4 — Log File Analyzer

**File:** `script4_log_analyzer.sh`

Reads a log file line-by-line using a `while` loop, counts how many lines contain a given keyword, and prints the last five matching lines as a summary.

**Concepts used:** `while read` loop, `if-then`, counter variables, command-line arguments (`$1`, `$2`).

---

### Script 5 — Open Source Manifesto Generator

**File:** `script5_manifesto.sh`

Asks the user three interactive questions and then generates a personalized open-source philosophy statement, saving it to a `.txt` file.

**Concepts used:** `read` for user input, string concatenation, writing to file using `>` and `>>`, and the `date` command.

---

## How to Run the Scripts on Linux

### Step 1 — Clone this repository

```bash
git clone https://github.com/KalashAgrawal10073/oss-audit-24BEC10073.git
cd oss-audit-24BEC10073
```

---

### Step 2 — Make the scripts executable

```bash
chmod +x script1_system_identity.sh
chmod +x script2_package_inspector.sh
chmod +x script3_disk_auditor.sh
chmod +x script4_log_analyzer.sh
chmod +x script5_manifesto.sh
```

---

### Step 3 — Run each script

**Script 1**

```bash
./script1_system_identity.sh
```

---

**Script 2**

```bash
./script2_package_inspector.sh
```

---

**Script 3**

```bash
./script3_disk_auditor.sh
```

---

**Script 4** (requires a log file path)

```bash
./script4_log_analyzer.sh /var/log/syslog error
```

---

**Script 5**

```bash
./script5_manifesto.sh
```

---

## Dependencies

| Dependency      | Purpose                                                    |
| --------------- | ---------------------------------------------------------- |
| `bash`          | Shell interpreter required to run all scripts              |
| `git`           | Required for Script 2 (package inspection)                 |
| `coreutils`     | Provides commands like `du`, `ls`, `date`, `whoami`, `cut` |
| `grep`          | Used for keyword searching in Scripts 2 and 4              |
| `rpm` or `dpkg` | Used in Script 2 to retrieve package information           |

All of these tools are pre-installed on most standard Linux distributions.

---

## Tested On

* Ubuntu 22.04 LTS
* Fedora 38
* Debian-based Linux distributions
* Red Hat-based Linux distributions

---

## Conclusion

This project demonstrates the use of **Bash scripting, Linux utilities, and open-source tools** to perform system inspection, package auditing, log analysis, and interactive scripting tasks.

The scripts highlight how open-source software like **Git** enables transparency, collaboration, and shared innovation within the global developer community.

---

*Submitted as part of the Open Source Software (OSS) Capstone Project — VITyarthi.*
