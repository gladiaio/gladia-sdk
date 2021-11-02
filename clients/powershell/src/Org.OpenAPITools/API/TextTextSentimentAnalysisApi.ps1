function Invoke-TextTextSentimentAnalysisApiApplyTextTextSentimentAnalysisPost {
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
        'Calling method: TextTextSentimentAnalysisApi-ApplyTextTextSentimentAnalysisPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextSentimentAnalysisApi.ApplyTextTextSentimentAnalysisPost(
            ${text},
            ${model}
        )
    }
}

function Invoke-TextTextSentimentAnalysisApiGetVersionsTextTextSentimentAnalysisGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextSentimentAnalysisApi-GetVersionsTextTextSentimentAnalysisGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextSentimentAnalysisApi.GetVersionsTextTextSentimentAnalysisGet(
        )
    }
}

