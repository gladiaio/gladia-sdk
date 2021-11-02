function Invoke-ImageTextOcrApiApplyImageTextOcrPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${image},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${sourceLanguage},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: ImageTextOcrApi-ApplyImageTextOcrPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageTextOcrApi.ApplyImageTextOcrPost(
            ${image},
            ${sourceLanguage},
            ${model}
        )
    }
}

function Invoke-ImageTextOcrApiGetVersionsImageTextOcrGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: ImageTextOcrApi-GetVersionsImageTextOcrGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ImageTextOcrApi.GetVersionsImageTextOcrGet(
        )
    }
}

