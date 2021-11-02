function New-BodyApplyVideoVideoFrameInterpolationPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${video}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.BodyApplyVideoVideoFrameInterpolationPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.BodyApplyVideoVideoFrameInterpolationPost -ArgumentList @(
            ${video}
        )
    }
}
