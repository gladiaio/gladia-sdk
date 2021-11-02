function Invoke-TextTextNextSentencePredictionApiApplyTextTextNextSentencePredictionPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${sentence1},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${sentence2},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: TextTextNextSentencePredictionApi-ApplyTextTextNextSentencePredictionPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextNextSentencePredictionApi.ApplyTextTextNextSentencePredictionPost(
            ${sentence1},
            ${sentence2},
            ${model}
        )
    }
}

function Invoke-TextTextNextSentencePredictionApiGetVersionsTextTextNextSentencePredictionGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextNextSentencePredictionApi-GetVersionsTextTextNextSentencePredictionGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextNextSentencePredictionApi.GetVersionsTextTextNextSentencePredictionGet(
        )
    }
}

