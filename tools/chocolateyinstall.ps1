$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName  = 'wechat'
  fileType     = 'exe'
  url          = 'https://dldir1.qq.com/weixin/Windows/WeChatSetup.exe'
  silentArgs   = '/S'
  softwareName = 'WeChat*'
  checksum     = 'A16CD7CF3D35C7FD4EC9CC07FC97F595160F3DE9A8527E118468F38EA12772A49F1CE827A1768476CD411A9B868066186D964D2FBC8C44D69698CE6CA9293461'
  checksumType = 'sha512'
}

Install-ChocolateyPackage @packageArgs
