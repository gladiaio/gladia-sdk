function Invoke-TextTextSentencePairModelingApiApplyTextTextSentencePairModelingPost {
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
        'Calling method: TextTextSentencePairModelingApi-ApplyTextTextSentencePairModelingPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextSentencePairModelingApi.ApplyTextTextSentencePairModelingPost(
            ${sentence},
            ${model}
        )
    }
}

function Invoke-TextTextSentencePairModelingApiGetVersionsTextTextSentencePairModelingGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextSentencePairModelingApi-GetVersionsTextTextSentencePairModelingGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextSentencePairModelingApi.GetVersionsTextTextSentencePairModelingGet(
        )
    }
}

