function Invoke-TextTextLanguageDetectionApiApplyTextTextLanguageDetectionPost {
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
        'Calling method: TextTextLanguageDetectionApi-ApplyTextTextLanguageDetectionPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextLanguageDetectionApi.ApplyTextTextLanguageDetectionPost(
            ${text},
            ${model}
        )
    }
}

function Invoke-TextTextLanguageDetectionApiGetVersionsTextTextLanguageDetectionGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextLanguageDetectionApi-GetVersionsTextTextLanguageDetectionGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextLanguageDetectionApi.GetVersionsTextTextLanguageDetectionGet(
        )
    }
}

