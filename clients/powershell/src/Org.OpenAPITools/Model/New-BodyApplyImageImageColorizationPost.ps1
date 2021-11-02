function New-BodyApplyImageImageColorizationPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${image}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.BodyApplyImageImageColorizationPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.BodyApplyImageImageColorizationPost -ArgumentList @(
            ${image}
        )
    }
}
