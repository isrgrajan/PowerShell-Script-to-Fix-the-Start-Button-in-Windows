# PowerShell Script to Fix the Start Button in Windows

Author: Isrg Rajan
Version: 1.0

## Description

This PowerShell script is designed to fix the Start button in Windows by adding the necessary permissions to the `Computer\HKEY_CLASSES_ROOT` registry key.

## Prerequisites

- Windows operating system 8.1, 10 and 11
- PowerShell (version 5.1 or later)

## Instructions

1. Clone or download the repository to your local machine.

2. Open a PowerShell console with administrative privileges:

   - Press `Win + X`.
   - Select "Windows PowerShell (Admin)" or "PowerShell (Admin)".

3. Navigate to the directory where you have saved the `FixStartButton.ps1` script.

4. Run the script using the following command:

```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
   .\FixStartButton.ps1
 ```
**Note:** If you encounter an error related to the script execution policy, you may need to run the following command before step 4:

```
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
```

5. The script will add the necessary permissions to the `Computer\HKEY_CLASSES_ROOT` registry key to fix the Start button.

**Important:** Make sure to review the script and verify its source before executing it on your system.

## License
This project is licensed under the [MIT License](https://github.com/isrgrajan/PowerShell-Script-to-Fix-the-Start-Button-in-Windows/blob/main/LICENSE).
