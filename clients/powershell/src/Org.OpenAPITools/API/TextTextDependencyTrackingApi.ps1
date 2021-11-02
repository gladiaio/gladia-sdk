function Invoke-TextTextDependencyTrackingApiApplyTextTextDependencyTrackingPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${inputString},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: TextTextDependencyTrackingApi-ApplyTextTextDependencyTrackingPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextDependencyTrackingApi.ApplyTextTextDependencyTrackingPost(
            ${inputString},
            ${model}
        )
    }
}

function Invoke-TextTextDependencyTrackingApiGetVersionsTextTextDependencyTrackingGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextDependencyTrackingApi-GetVersionsTextTextDependencyTrackingGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextDependencyTrackingApi.GetVersionsTextTextDependencyTrackingGet(
        )
    }
}

