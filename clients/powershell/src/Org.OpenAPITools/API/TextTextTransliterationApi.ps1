function Invoke-TextTextTransliterationApiApplyTextTextTransliterationPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${text},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${language},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: TextTextTransliterationApi-ApplyTextTextTransliterationPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextTransliterationApi.ApplyTextTextTransliterationPost(
            ${text},
            ${language},
            ${model}
        )
    }
}

function Invoke-TextTextTransliterationApiGetVersionsTextTextTransliterationGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextTransliterationApi-GetVersionsTextTextTransliterationGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextTransliterationApi.GetVersionsTextTextTransliterationGet(
        )
    }
}

