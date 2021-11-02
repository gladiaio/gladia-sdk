function Invoke-ImageTextAsciifyApiApplyImageTextAsciifyPost {
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
        'Calling method: ImageTextAsciifyApi-ApplyImageTextAsciifyPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageTextAsciifyApi.ApplyImageTextAsciifyPost(
            ${image},
            ${model}
        )
    }
}

function Invoke-ImageTextAsciifyApiGetVersionsImageTextAsciifyGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: ImageTextAsciifyApi-GetVersionsImageTextAsciifyGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageTextAsciifyApi.GetVersionsImageTextAsciifyGet(
        )
    }
}

