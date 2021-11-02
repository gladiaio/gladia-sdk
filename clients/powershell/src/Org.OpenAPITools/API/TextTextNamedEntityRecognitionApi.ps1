function Invoke-TextTextNamedEntityRecognitionApiApplyTextTextNamedEntityRecognitionPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${text},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: TextTextNamedEntityRecognitionApi-ApplyTextTextNamedEntityRecognitionPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextNamedEntityRecognitionApi.ApplyTextTextNamedEntityRecognitionPost(
            ${text},
            ${model}
        )
    }
}

function Invoke-TextTextNamedEntityRecognitionApiGetVersionsTextTextNamedEntityRecognitionGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextNamedEntityRecognitionApi-GetVersionsTextTextNamedEntityRecognitionGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextNamedEntityRecognitionApi.GetVersionsTextTextNamedEntityRecognitionGet(
        )
    }
}

