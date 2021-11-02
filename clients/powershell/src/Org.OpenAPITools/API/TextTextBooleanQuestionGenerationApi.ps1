function Invoke-TextTextBooleanQuestionGenerationApiApplyTextTextBooleanQuestionGenerationPost {
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
        'Calling method: TextTextBooleanQuestionGenerationApi-ApplyTextTextBooleanQuestionGenerationPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextBooleanQuestionGenerationApi.ApplyTextTextBooleanQuestionGenerationPost(
            ${text},
            ${model}
        )
    }
}

function Invoke-TextTextBooleanQuestionGenerationApiGetVersionsTextTextBooleanQuestionGenerationGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextBooleanQuestionGenerationApi-GetVersionsTextTextBooleanQuestionGenerationGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextBooleanQuestionGenerationApi.GetVersionsTextTextBooleanQuestionGenerationGet(
        )
    }
}

