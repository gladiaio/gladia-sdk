function Invoke-TextTextEntityExtractionApiApplyTextTextEntityExtractionPost {
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
        'Calling method: TextTextEntityExtractionApi-ApplyTextTextEntityExtractionPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextEntityExtractionApi.ApplyTextTextEntityExtractionPost(
            ${inputString},
            ${model}
        )
    }
}

function Invoke-TextTextEntityExtractionApiGetVersionsTextTextEntityExtractionGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextEntityExtractionApi-GetVersionsTextTextEntityExtractionGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextEntityExtractionApi.GetVersionsTextTextEntityExtractionGet(
        )
    }
}

