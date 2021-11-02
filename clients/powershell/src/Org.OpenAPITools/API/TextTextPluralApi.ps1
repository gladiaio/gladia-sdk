function Invoke-TextTextPluralApiApplyTextTextPluralPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${word},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${count},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: TextTextPluralApi-ApplyTextTextPluralPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextPluralApi.ApplyTextTextPluralPost(
            ${word},
            ${count},
            ${model}
        )
    }
}

function Invoke-TextTextPluralApiGetVersionsTextTextPluralGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextPluralApi-GetVersionsTextTextPluralGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextPluralApi.GetVersionsTextTextPluralGet(
        )
    }
}

