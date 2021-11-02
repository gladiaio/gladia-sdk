function Invoke-TextTextLanguageGenerationApiApplyTextTextLanguageGenerationPost {
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
        'Calling method: TextTextLanguageGenerationApi-ApplyTextTextLanguageGenerationPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextLanguageGenerationApi.ApplyTextTextLanguageGenerationPost(
            ${text},
            ${model}
        )
    }
}

function Invoke-TextTextLanguageGenerationApiGetVersionsTextTextLanguageGenerationGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextLanguageGenerationApi-GetVersionsTextTextLanguageGenerationGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextLanguageGenerationApi.GetVersionsTextTextLanguageGenerationGet(
        )
    }
}

