function New-BodyApplyImageImageUncolorizationPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${image}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.BodyApplyImageImageUncolorizationPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.BodyApplyImageImageUncolorizationPost -ArgumentList @(
            ${image}
        )
    }
}
