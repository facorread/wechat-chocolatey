$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'wechat'
  fileType      = 'exe'
  url           = 'http://dlglobal.qq.com/weixin/Windows/WeChat_C1018.exe'
  silentArgs   = '/S'
  softwareName  = 'WeChat*'
  checksum      = '750b36b615625a9fb5821ba61616da860ed0925012d7b7aad81861d2176fdfb7b3cfa2d59c6f98ee9e732fa8ee3ca9cff3df137a2e47b38c7f706d7c8d4813c5'
  checksumType  = 'sha512'
}

Install-ChocolateyPackage @packageArgs
