function Invoke-TextTextProgrammingLanguageGenerationApiApplyTextTextProgrammingLanguageGenerationPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${codeSnippet},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: TextTextProgrammingLanguageGenerationApi-ApplyTextTextProgrammingLanguageGenerationPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextProgrammingLanguageGenerationApi.ApplyTextTextProgrammingLanguageGenerationPost(
            ${codeSnippet},
            ${model}
        )
    }
}

function Invoke-TextTextProgrammingLanguageGenerationApiGetVersionsTextTextProgrammingLanguageGenerationGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextProgrammingLanguageGenerationApi-GetVersionsTextTextProgrammingLanguageGenerationGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextProgrammingLanguageGenerationApi.GetVersionsTextTextProgrammingLanguageGenerationGet(
        )
    }
}

