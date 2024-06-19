function Get-RandomCommand {
    $commands = @(
        "Get-Process",
        "Get-Service",
        "Get-EventLog -LogName Application",
        "Get-ChildItem",
        "Set-Location",
        "New-Item -ItemType File",
        "Remove-Item",
        "Copy-Item",
        "Move-Item",
        "Start-Process",
        "Stop-Process",
        "Get-Content",
        "Set-Content",
        "Add-Content",
        "Get-Help",
        "Get-Command",
        "Get-Module",
        "Import-Module",
        "Export-ModuleMember",
        "Get-Alias"
    )
    return $commands | Get-Random
}

$randomCommands = @()

1..4097 | ForEach-Object {
    $randomCommands += Get-RandomCommand
}

$randomCommands | Out-File -FilePath "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt"