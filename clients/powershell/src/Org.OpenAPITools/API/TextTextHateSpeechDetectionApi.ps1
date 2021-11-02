function Invoke-TextTextHateSpeechDetectionApiApplyTextTextHateSpeechDetectionPost {
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
        'Calling method: TextTextHateSpeechDetectionApi-ApplyTextTextHateSpeechDetectionPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextHateSpeechDetectionApi.ApplyTextTextHateSpeechDetectionPost(
            ${text},
            ${model}
        )
    }
}

function Invoke-TextTextHateSpeechDetectionApiGetVersionsTextTextHateSpeechDetectionGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextHateSpeechDetectionApi-GetVersionsTextTextHateSpeechDetectionGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextHateSpeechDetectionApi.GetVersionsTextTextHateSpeechDetectionGet(
        )
    }
}

