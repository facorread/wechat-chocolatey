$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'wechat'
  fileType      = 'exe'
  url           = 'https://dldir1.qq.com/weixin/Windows/WeChat_C1018.exe'
  silentArgs   = '/S'
  softwareName  = 'WeChat*'
  checksum      = 'f011a154058e0023bcc8192ec65e96761cadcca18132913faf0f353102fbd34d2f138380713a8779ff69d9a17c9438b8959c80e1038716b33c01ae1d2213bfbc'
  checksumType  = 'sha512'
}

Install-ChocolateyPackage @packageArgs
