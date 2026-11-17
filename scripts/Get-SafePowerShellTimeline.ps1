#Requires -Version 5.1
<#
.SYNOPSIS
    Collects a privacy-limited PowerShell event timeline for one process ID.
.DESCRIPTION
    Queries Windows PowerShell engine lifecycle events (400, 403) and Windows
    PowerShell Operational script-block events (4104), returning only event
    metadata. Does not display script-block text, command lines or script paths.
    Read-only: does not change logging settings or execute the monitored script.
    A successful empty result means no matching records in the queried logs;
    it does not prove the process never ran.
.PARAMETER TargetPid
    Process ID to match against the event provider's ProcessId field.
.PARAMETER StartTime
    Beginning of the investigation window (local time).
.PARAMETER EndTime
    End of the investigation window (local time).
.EXAMPLE
    . .\scripts\Get-SafePowerShellTimeline.ps1
    Get-SafePowerShellTimeline -TargetPid 27600 -StartTime '2026-11-16 13:51:00' -EndTime '2026-11-16 13:53:00'
.NOTES
    Developed and interactively tested in Windows PowerShell 5.1 on Windows 11.
    Query results depend on accessible, retained Windows event logs.
#>
function Get-SafePowerShellTimeline {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [ValidateRange(1, 2147483647)]
        [int]$TargetPid,

        [Parameter(Mandatory)]
        [datetime]$StartTime,

        [Parameter(Mandatory)]
        [datetime]$EndTime
    )

    if ($StartTime -gt $EndTime) {
        throw 'StartTime must not be later than EndTime.'
    }

    $sources = @(
        @{
            LogName = 'Windows PowerShell'
            Ids = @(400, 403)
        },
        @{
            LogName = 'Microsoft-Windows-PowerShell/Operational'
            Ids = @(4104)
        }
    )

    foreach ($source in $sources) {
        try {
            Get-WinEvent -FilterHashtable @{
                LogName = $source.LogName
                Id = $source.Ids
                StartTime = $StartTime
                EndTime = $EndTime
            } -ErrorAction Stop |
                Where-Object {
                    $_.ProcessId -eq $TargetPid
                } |
                Select-Object TimeCreated, LogName, Id, RecordId, ProcessId
        }
        catch {
            if ($_.FullyQualifiedErrorId -like 'NoMatchingEventsFound*') {
                continue
            }

            throw "Log query failed for $($source.LogName): $($_.Exception.Message)"
        }
    }
}
