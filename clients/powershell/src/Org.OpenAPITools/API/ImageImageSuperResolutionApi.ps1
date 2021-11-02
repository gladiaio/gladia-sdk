function Invoke-ImageImageSuperResolutionApiApplyImageImageSuperResolutionPost {
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
        'Calling method: ImageImageSuperResolutionApi-ApplyImageImageSuperResolutionPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageImageSuperResolutionApi.ApplyImageImageSuperResolutionPost(
            ${image},
            ${model}
        )
    }
}

function Invoke-ImageImageSuperResolutionApiGetVersionsImageImageSuperResolutionGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: ImageImageSuperResolutionApi-GetVersionsImageImageSuperResolutionGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageImageSuperResolutionApi.GetVersionsImageImageSuperResolutionGet(
        )
    }
}

