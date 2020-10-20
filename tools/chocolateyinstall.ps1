$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName  = 'wechat'
  fileType     = 'exe'
  url          = 'https://dldir1.qq.com/weixin/Windows/WeChatSetup.exe'
  silentArgs   = '/S'
  softwareName = 'WeChat*'
  checksum     = '95ab26c3048b6705954549d30bb4f3ee12c8a61c3a961477fa7d736d2792ffc01f6e550472b8c0148d7df66a04c9877b5a4857dc56684b96ea0baa56b184d74b'
  checksumType = 'sha512'
}

Install-ChocolateyPackage @packageArgs
