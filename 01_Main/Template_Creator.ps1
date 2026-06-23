[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$Output_File
)

<#

    Versions History:

    Version 1.0.1: Initial Tweeking
    Version 1.0.2: Added Title Variable

#>

$Output_String = @"
. ./01_Main/Template_Implementor.ps1

# Template Version 1.0.2

`$Title = ""

`$Main_Content = @`"

`"@

`$Output_String = Boiler_Plater -Main_Content `$Main_Content -Title `$Title

`$Output_File = ""

Write_File -Main_Content `$Output_String -Output_File `$Output_File
"@

try {
    New-Item -Path $Output_File -ItemType "File" -Value $Output_String
    Write-Output "Successfully wrote to: $FilePath"
}
catch {
    Write-Error "Failed to write to file. Error: $_"
}