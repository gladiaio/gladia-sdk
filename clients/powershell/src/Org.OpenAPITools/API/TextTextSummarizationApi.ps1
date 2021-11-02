function Invoke-TextTextSummarizationApiApplyTextTextSummarizationPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${text},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${sourceLanguage},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${maxLength},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${minLength},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: TextTextSummarizationApi-ApplyTextTextSummarizationPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextSummarizationApi.ApplyTextTextSummarizationPost(
            ${text},
            ${sourceLanguage},
            ${maxLength},
            ${minLength},
            ${model}
        )
    }
}

function Invoke-TextTextSummarizationApiGetVersionsTextTextSummarizationGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextSummarizationApi-GetVersionsTextTextSummarizationGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextSummarizationApi.GetVersionsTextTextSummarizationGet(
        )
    }
}

