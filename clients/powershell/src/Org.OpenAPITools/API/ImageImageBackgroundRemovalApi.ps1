function Invoke-ImageImageBackgroundRemovalApiApplyImageImageBackgroundRemovalPost {
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
        'Calling method: ImageImageBackgroundRemovalApi-ApplyImageImageBackgroundRemovalPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageImageBackgroundRemovalApi.ApplyImageImageBackgroundRemovalPost(
            ${image},
            ${model}
        )
    }
}

function Invoke-ImageImageBackgroundRemovalApiGetVersionsImageImageBackgroundRemovalGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: ImageImageBackgroundRemovalApi-GetVersionsImageImageBackgroundRemovalGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageImageBackgroundRemovalApi.GetVersionsImageImageBackgroundRemovalGet(
        )
    }
}

