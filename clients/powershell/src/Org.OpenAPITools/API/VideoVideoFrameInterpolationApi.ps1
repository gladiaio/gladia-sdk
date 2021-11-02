function Invoke-VideoVideoFrameInterpolationApiApplyVideoVideoFrameInterpolationPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${video},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: VideoVideoFrameInterpolationApi-ApplyVideoVideoFrameInterpolationPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:VideoVideoFrameInterpolationApi.ApplyVideoVideoFrameInterpolationPost(
            ${video},
            ${model}
        )
    }
}

function Invoke-VideoVideoFrameInterpolationApiGetVersionsVideoVideoFrameInterpolationGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: VideoVideoFrameInterpolationApi-GetVersionsVideoVideoFrameInterpolationGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:VideoVideoFrameInterpolationApi.GetVersionsVideoVideoFrameInterpolationGet(
        )
    }
}

