function Invoke-TextTextSimilarityApiApplyTextTextSimilarityPost {
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
        'Calling method: TextTextSimilarityApi-ApplyTextTextSimilarityPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextSimilarityApi.ApplyTextTextSimilarityPost(
            ${sentence1},
            ${sentence2},
            ${model}
        )
    }
}

function Invoke-TextTextSimilarityApiGetVersionsTextTextSimilarityGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextSimilarityApi-GetVersionsTextTextSimilarityGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextSimilarityApi.GetVersionsTextTextSimilarityGet(
        )
    }
}

