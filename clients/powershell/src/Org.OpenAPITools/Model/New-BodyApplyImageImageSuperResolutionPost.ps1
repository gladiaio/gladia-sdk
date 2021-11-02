function New-BodyApplyImageImageSuperResolutionPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${image}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.BodyApplyImageImageSuperResolutionPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.BodyApplyImageImageSuperResolutionPost -ArgumentList @(
            ${image}
        )
    }
}
