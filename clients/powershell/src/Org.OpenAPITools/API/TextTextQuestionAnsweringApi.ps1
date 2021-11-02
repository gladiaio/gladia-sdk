function Invoke-TextTextQuestionAnsweringApiApplyTextTextQuestionAnsweringPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${context},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${question},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: TextTextQuestionAnsweringApi-ApplyTextTextQuestionAnsweringPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextQuestionAnsweringApi.ApplyTextTextQuestionAnsweringPost(
            ${context},
            ${question},
            ${model}
        )
    }
}

function Invoke-TextTextQuestionAnsweringApiGetVersionsTextTextQuestionAnsweringGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextQuestionAnsweringApi-GetVersionsTextTextQuestionAnsweringGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextQuestionAnsweringApi.GetVersionsTextTextQuestionAnsweringGet(
        )
    }
}

