# Folder Rename Automation using Batch Script

This project demonstrates a simple **automation solution** to bulk rename folders using **Windows Batch Script**.

The scripts were created with the help of **AI (ChatGPT)** to automate a repetitive task that would otherwise take hours if done manually.

---

## 📌 Problem Statement

Rename **1000+ folders** where folder names are numeric values by:

- Adding a prefix **"P"** to each folder name  
  Example: `16546 → P16546`
- Providing a **rollback script** to remove the prefix if needed

---

## 🛠️ Solution Overview

This repository contains **two batch scripts**:

1. **Add_P_Prefix.bat**  
   Adds letter `P` to the beginning of all folder names

2. **Remove_P_Prefix.bat**  
   Removes letter `P` from the beginning of folder names (rollback)

---

## 🚀 How to Use (Implementation Steps)

### ⚠️ Important Notes
- Works on **Windows OS**
- Affects **all folders in the same directory** as the script
- Recommended to **take a backup** before running

---

### ✅ Steps to Implement

1. Copy the `.bat` file(s) into the folder that contains the folders you want to rename
2. Double-click the batch file
3. The script will automatically rename all folders
4. Press any key to exit after completion

---

##Script Explanation - Line by Line (Add_P_Prefix.bat)

- @echo off -> Prevents command lines from being displayed, Keeps output clean and readable

- setlocal enabledelayedexpansion -> Enables advanced variable handling, Required because batch scripts evaluate variables differently inside loops

- for /d %%F in (*) do ( -> Loops through all folders in the current directory, /d is added so that the loop only goes through the directory and not the files.

- %%F -> represents each folder name

- set "name=%%F"  -> Stores the folder name in a variable called name

- if /i not "!name:~0,1!"=="P" (  -> Checks the first character of the folder name

- /i makes the comparison case-insensitive, Ensures folders already starting with P are skipped

- ren "%%F" "P%%F" -> Renames the folder, Adds the prefix P to the existing folder name

- echo Letter P Added at the beginning !!!!  -> Displays a confirmation message

- pause -> Keeps the command window open until a key is pressed

---

## Rollback Script Explanation - Line by Line (Remove_P_Prefix.bat)

- if /i "!name:~0,1!"=="P"  -> Checks whether the folder name starts with P

- ren "%%F" "!name:~1!"  -> Removes the first character (P), Restores the original folder name
