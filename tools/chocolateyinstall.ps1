$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName  = 'wechat'
  fileType     = 'exe'
  url          = 'https://dldir1.qq.com/weixin/Windows/WeChatSetup.exe'
  silentArgs   = '/S'
  softwareName = 'WeChat*'
  checksum     = '2A9F43B5DBB71A91DEC6AC67D7EE8CBDD089658DEF317366F24A17BCB7F6F6456E220876B5D3658F85A1A6AF960F082353DA9B4A3F87F99A7CCCBDEC8BF82FB2'
  checksumType = 'sha512'
}

Install-ChocolateyPackage @packageArgs
