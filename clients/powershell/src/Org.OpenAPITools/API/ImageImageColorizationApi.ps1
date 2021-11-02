function Invoke-ImageImageColorizationApiApplyImageImageColorizationPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${image},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: ImageImageColorizationApi-ApplyImageImageColorizationPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageImageColorizationApi.ApplyImageImageColorizationPost(
            ${image},
            ${model}
        )
    }
}

function Invoke-ImageImageColorizationApiGetVersionsImageImageColorizationGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: ImageImageColorizationApi-GetVersionsImageImageColorizationGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageImageColorizationApi.GetVersionsImageImageColorizationGet(
        )
    }
}

