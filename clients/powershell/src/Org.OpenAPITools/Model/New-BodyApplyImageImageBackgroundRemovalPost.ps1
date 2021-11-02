function New-BodyApplyImageImageBackgroundRemovalPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${image}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.BodyApplyImageImageBackgroundRemovalPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.BodyApplyImageImageBackgroundRemovalPost -ArgumentList @(
            ${image}
        )
    }
}
