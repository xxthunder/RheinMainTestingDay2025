function Invoke-Bootstrap {
    Invoke-RestMethod https://raw.githubusercontent.com/avengineers/bootstrap-installer/v1.16.0/install.ps1 | Invoke-Expression
    . .\.bootstrap\bootstrap.ps1
}

## start of script
# Always set the $InformationPreference variable to "Continue" globally,
# this way it gets printed on execution and continues execution afterwards.
$InformationPreference = "Continue"

# Stop on first error
$ErrorActionPreference = "Stop"

Push-Location $PSScriptRoot
Write-Output "Running in ${pwd}"

try {
    Invoke-Bootstrap
   
    # Praise our company's proxy setup
    $env:PUPPETEER_SKIP_DOWNLOAD = "1"
    npm config set strict-ssl false

    npm install
}
finally {
   Pop-Location
   Read-Host -Prompt "Press Enter to continue ..."
}
## end of script
