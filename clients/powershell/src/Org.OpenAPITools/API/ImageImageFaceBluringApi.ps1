function Invoke-ImageImageFaceBluringApiApplyImageImageFaceBluringPost {
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
        'Calling method: ImageImageFaceBluringApi-ApplyImageImageFaceBluringPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageImageFaceBluringApi.ApplyImageImageFaceBluringPost(
            ${image},
            ${model}
        )
    }
}

function Invoke-ImageImageFaceBluringApiGetVersionsImageImageFaceBluringGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: ImageImageFaceBluringApi-GetVersionsImageImageFaceBluringGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageImageFaceBluringApi.GetVersionsImageImageFaceBluringGet(
        )
    }
}

