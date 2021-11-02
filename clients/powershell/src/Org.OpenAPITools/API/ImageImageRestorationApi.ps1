function Invoke-ImageImageRestorationApiApplyImageImageRestorationPost {
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
        'Calling method: ImageImageRestorationApi-ApplyImageImageRestorationPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageImageRestorationApi.ApplyImageImageRestorationPost(
            ${image},
            ${model}
        )
    }
}

function Invoke-ImageImageRestorationApiGetVersionsImageImageRestorationGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: ImageImageRestorationApi-GetVersionsImageImageRestorationGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageImageRestorationApi.GetVersionsImageImageRestorationGet(
        )
    }
}

