$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName  = 'wechat'
  fileType     = 'exe'
  url          = 'https://dldir1.qq.com/weixin/Windows/WeChatSetup.exe'
  silentArgs   = '/S'
  softwareName = 'WeChat*'
  checksum     = '2a9f43b5dbb71a91dec6ac67d7ee8cbdd089658def317366f24a17bcb7f6f6456e220876b5d3658f85a1a6af960f082353da9b4a3f87f99a7cccbdec8bf82fb2'
  checksumType = 'sha512'
}

Install-ChocolateyPackage @packageArgs
