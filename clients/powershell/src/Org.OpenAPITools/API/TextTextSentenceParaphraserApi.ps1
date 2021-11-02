function Invoke-TextTextSentenceParaphraserApiApplyTextTextSentenceParaphraserPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${context},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: TextTextSentenceParaphraserApi-ApplyTextTextSentenceParaphraserPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextSentenceParaphraserApi.ApplyTextTextSentenceParaphraserPost(
            ${context},
            ${model}
        )
    }
}

function Invoke-TextTextSentenceParaphraserApiGetVersionsTextTextSentenceParaphraserGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextSentenceParaphraserApi-GetVersionsTextTextSentenceParaphraserGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextSentenceParaphraserApi.GetVersionsTextTextSentenceParaphraserGet(
        )
    }
}

