function Invoke-TextTextProgrammingLanguageIdentificationApiApplyTextTextProgrammingLanguageIdentificationPost {
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
        'Calling method: TextTextProgrammingLanguageIdentificationApi-ApplyTextTextProgrammingLanguageIdentificationPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextProgrammingLanguageIdentificationApi.ApplyTextTextProgrammingLanguageIdentificationPost(
            ${text},
            ${model}
        )
    }
}

function Invoke-TextTextProgrammingLanguageIdentificationApiGetVersionsTextTextProgrammingLanguageIdentificationGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextProgrammingLanguageIdentificationApi-GetVersionsTextTextProgrammingLanguageIdentificationGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextProgrammingLanguageIdentificationApi.GetVersionsTextTextProgrammingLanguageIdentificationGet(
        )
    }
}

