function Invoke-TextTextEmotionRecognitionApiApplyTextTextEmotionRecognitionPost {
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
        'Calling method: TextTextEmotionRecognitionApi-ApplyTextTextEmotionRecognitionPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextEmotionRecognitionApi.ApplyTextTextEmotionRecognitionPost(
            ${text},
            ${model}
        )
    }
}

function Invoke-TextTextEmotionRecognitionApiGetVersionsTextTextEmotionRecognitionGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextEmotionRecognitionApi-GetVersionsTextTextEmotionRecognitionGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextEmotionRecognitionApi.GetVersionsTextTextEmotionRecognitionGet(
        )
    }
}

