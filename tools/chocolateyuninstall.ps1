$ErrorActionPreference = 'Stop';
$installerType = 'EXE' 
$silentArgs = '/qn /norestart'
$validExitCodes = @(0, 3010, 1605, 1614, 1641)

if ($installerType -ne 'MSI') {
  $silentArgs = '/S'
  $validExitCodes = @(0)
}

[array]$key = Get-UninstallRegistryKey -SoftwareName 'WeChat*'

if ($key.Count -eq 1) {
  $key | % { 
    $file = "$($_.UninstallString)"

    if ($installerType -eq 'MSI') {
      $silentArgs = "$($_.PSChildName) $silentArgs"
      $file = ''
    }

    Uninstall-ChocolateyPackage -PackageName wechat `
                                -FileType $installerType `
                                -SilentArgs "$silentArgs" `
                                -ValidExitCodes $validExitCodes `
                                -File "$file"
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "We did not find a WeChat installation."
} elseif ($key.Count -gt 1) {
  Write-Warning "We found $key.Count WeChat installations!"
  Write-Warning "We will stop here to prevent accidental data loss."
  Write-Warning "Please alert the maintainer of this Chocolatey package about the following keys:"
  $key | % {Write-Warning "- $_.DisplayName"}
}
