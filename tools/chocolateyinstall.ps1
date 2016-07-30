
$ErrorActionPreference = 'Stop';


$packageName= 'wechat'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://dlglobal.qq.com/weixin/Windows/WeChat_C1018.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = '/S'
  validExitCodes= @(0)

  softwareName  = 'WeChat*'
  checksum      = 'a4c730850d97eced773a4c47e0917a63'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs


















