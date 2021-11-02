function Invoke-TextTextLemmatizationApiApplyTextTextLemmatizationPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${sentence},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: TextTextLemmatizationApi-ApplyTextTextLemmatizationPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextLemmatizationApi.ApplyTextTextLemmatizationPost(
            ${sentence},
            ${model}
        )
    }
}

function Invoke-TextTextLemmatizationApiGetVersionsTextTextLemmatizationGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextLemmatizationApi-GetVersionsTextTextLemmatizationGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextLemmatizationApi.GetVersionsTextTextLemmatizationGet(
        )
    }
}

