function Invoke-ImageImageUncolorizationApiApplyImageImageUncolorizationPost {
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
        'Calling method: ImageImageUncolorizationApi-ApplyImageImageUncolorizationPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageImageUncolorizationApi.ApplyImageImageUncolorizationPost(
            ${image},
            ${model}
        )
    }
}

function Invoke-ImageImageUncolorizationApiGetVersionsImageImageUncolorizationGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: ImageImageUncolorizationApi-GetVersionsImageImageUncolorizationGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageImageUncolorizationApi.GetVersionsImageImageUncolorizationGet(
        )
    }
}

