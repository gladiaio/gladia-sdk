function Invoke-TextTextKeywordExtractionApiApplyTextTextKeywordExtractionPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${text},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: TextTextKeywordExtractionApi-ApplyTextTextKeywordExtractionPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextKeywordExtractionApi.ApplyTextTextKeywordExtractionPost(
            ${text},
            ${model}
        )
    }
}

function Invoke-TextTextKeywordExtractionApiGetVersionsTextTextKeywordExtractionGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextKeywordExtractionApi-GetVersionsTextTextKeywordExtractionGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextKeywordExtractionApi.GetVersionsTextTextKeywordExtractionGet(
        )
    }
}

