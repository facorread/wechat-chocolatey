
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
  checksum      = '7ff5f5f96b5dfc0def49505a6d00dc6a'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs


















