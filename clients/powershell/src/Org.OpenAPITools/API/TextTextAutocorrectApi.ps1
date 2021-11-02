function Invoke-TextTextAutocorrectApiApplyTextTextAutocorrectPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${sentence},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${model}
    )

    Process {
        'Calling method: TextTextAutocorrectApi-ApplyTextTextAutocorrectPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextAutocorrectApi.ApplyTextTextAutocorrectPost(
            ${sentence},
            ${model}
        )
    }
}

function Invoke-TextTextAutocorrectApiGetVersionsTextTextAutocorrectGet {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: TextTextAutocorrectApi-GetVersionsTextTextAutocorrectGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TextTextAutocorrectApi.GetVersionsTextTextAutocorrectGet(
        )
    }
}

