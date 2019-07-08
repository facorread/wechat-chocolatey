
$ErrorActionPreference = 'Stop';


$packageName= 'wechat'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dlglobal.qq.com/weixin/Windows/WeChat_C1018.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = '/S'
  validExitCodes= @(0)

  softwareName  = 'WeChat*'
  checksum      = '750b36b615625a9fb5821ba61616da860ed0925012d7b7aad81861d2176fdfb7b3cfa2d59c6f98ee9e732fa8ee3ca9cff3df137a2e47b38c7f706d7c8d4813c5'
  checksumType  = 'sha512'
}

Install-ChocolateyPackage @packageArgs
