# 🧰 Backup Script

A lightweight and reliable **Bash utility** that automates local file and folder backups with timestamped directories and persistent logging.  
Perfect for developers who want simple versioned backups without fancy dependencies.

---

## ✨ Features
- 🗂️ Copy files or directories recursively (including hidden files)  
- 🕒 Automatically timestamps each backup (`backup_YYYY_MM_DD-HH_MM_SS`)  
- 🧾 Writes detailed logs to `/var/log/backup_script.log`  
- ⚡ Exits immediately on any error (`set -e`)  
- 🧱 Creates destination directories if missing  
- 🧹 Ignores missing or empty hidden folders safely  

---

## 🧠 How It Works
1. Defines source, destination, and log file paths.  
2. Verifies the source directory exists.  
3. Creates a new timestamped backup directory inside the destination.  
4. Copies all files (including dotfiles) from the source to the backup.  
5. Logs every step and completion time.

---

## 🧩 Project Structure
```
.
├── backup.sh               # Main script
└── /var/log/backup_script.log  # Log file (created automatically)
```

---

## ⚙️ Configuration

Update these variables in `backup.sh` as needed:
```bash
fileToCopy=/path/to/source
destination=/path/to/destination
backupScript_log=/path/to/logfile.log
```

Default values:
```bash
fileToCopy=/Users/victoronowho/logs
destination=/Users/victoronowho/devops_learning
backupScript_log=/var/log/backup_script.log
```

---

## 🚀 Usage

### 1. Make the script executable
```bash
chmod +x backup.sh
```

### 2. Run it
```bash
./backup.sh
```

### 3. Verify backup
Check your destination directory:
```bash
ls /Users/victoronowho/devops_learning
```

### 4. Check logs
```bash
cat /var/log/backup_script.log
```

Sample log output:
```
Backing up script started at Sat Oct 26 09:22:14 CDT 2025
File copied successfully
Backup finished at Sat Oct 26 09:22:16 CDT 2025
```

---

## 🧪 Example Cron Setup (Optional)

Automate daily backups at midnight:
```bash
0 0 * * * /path/to/backup.sh
```

---

## 🧱 Requirements
- Bash 4.0 or later  
- Write permission for log and destination paths  
- Read permission for source directory  

---

## 🔒 Error Handling
- If the source directory doesn’t exist, the script exits with:
  ```
  /path/to/source doesn't exist
  ```
- Uses `set -e` to terminate immediately if any command fails.

---

## 🧑‍💻 Author
**Victor Onowho**  
Simple solutions. Clean automation.  
📍 Austin, TX  

---

## 🏷️ License
This project is open-source and free to use under the **MIT License**.
