function Invoke-TextTextNextWordPredictionApiApplyTextTextNextWordPredictionPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${sentence},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: TextTextNextWordPredictionApi-ApplyTextTextNextWordPredictionPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextNextWordPredictionApi.ApplyTextTextNextWordPredictionPost(
            ${sentence},
            ${model}
        )
    }
}

function Invoke-TextTextNextWordPredictionApiGetVersionsTextTextNextWordPredictionGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextNextWordPredictionApi-GetVersionsTextTextNextWordPredictionGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextNextWordPredictionApi.GetVersionsTextTextNextWordPredictionGet(
        )
    }
}

