function New-HTTPValidationError {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.ValidationError[]]]
        ${detail}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.HTTPValidationError' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.HTTPValidationError -ArgumentList @(
            ${detail}
        )
    }
}
