# This directory contains a file .skipAutoUninstall to tell Chocolatey to skip the automatic uninstaller https://github.com/chocolatey/choco/issues/1257

$packageArgs = @{
    PackageName = 'wechat'
    FileType    = 'exe'
    SilentArgs  = '/S'
    File        = 'C:\Program Files (x86)\Tencent\WeChat\Uninstall.exe'
}

Uninstall-ChocolateyPackage @packageArgs
