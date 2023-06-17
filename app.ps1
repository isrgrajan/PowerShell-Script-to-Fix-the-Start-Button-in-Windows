<#
Script: FixStartButton.ps1
Author: Isrg Rajan
Version: 1.0
Description: PowerShell Script to Fix the Start Button in Windows
#>

$registryPath = "HKCR:\"
$registryKey = "Computer"

try {
    # Get the current ACL of the registry key
    $acl = Get-Acl -Path $registryPath

    # Create a new access rule for "All Application Packages" with full control
    $rule = New-Object System.Security.AccessControl.RegistryAccessRule("All Application Packages", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")

    # Add the access rule to the ACL
    $acl.AddAccessRule($rule)

    # Set the modified ACL to the registry key
    Set-Acl -Path $registryPath -AclObject $acl

    Write-Host "Permission added successfully."
}
catch {
    Write-Host "An error occurred while adding permission: $($_.Exception.Message)"
}
