#
# Copyright 2014-2016 Cloudbase Solutions SRL
#

$ErrorActionPreference = "Stop"

Import-Module JujuLogging

try {
    Import-Module ComputeHooks

    Start-WSFCRelationJoinedHook
} catch {
    Write-HookTracebackToLog $_
    exit 1
}
