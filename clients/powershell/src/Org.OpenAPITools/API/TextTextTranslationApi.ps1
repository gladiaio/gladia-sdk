function Invoke-TextTextTranslationApiApplyTextTextTranslationPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${inputString},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${sourceLanguage},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${targetLanguage},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: TextTextTranslationApi-ApplyTextTextTranslationPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextTranslationApi.ApplyTextTextTranslationPost(
            ${inputString},
            ${sourceLanguage},
            ${targetLanguage},
            ${model}
        )
    }
}

function Invoke-TextTextTranslationApiGetVersionsTextTextTranslationGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextTranslationApi-GetVersionsTextTextTranslationGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextTranslationApi.GetVersionsTextTextTranslationGet(
        )
    }
}

