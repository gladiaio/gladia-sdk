function Invoke-TextTextWordAlignmentApiApplyTextTextWordAlignmentPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${inputStringLanguage1},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${inputStringLanguage2},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: TextTextWordAlignmentApi-ApplyTextTextWordAlignmentPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextWordAlignmentApi.ApplyTextTextWordAlignmentPost(
            ${inputStringLanguage1},
            ${inputStringLanguage2},
            ${model}
        )
    }
}

function Invoke-TextTextWordAlignmentApiGetVersionsTextTextWordAlignmentGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextWordAlignmentApi-GetVersionsTextTextWordAlignmentGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextWordAlignmentApi.GetVersionsTextTextWordAlignmentGet(
        )
    }
}

