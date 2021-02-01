$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName  = 'wechat'
  fileType     = 'exe'
  url          = 'https://dldir1.qq.com/weixin/Windows/WeChatSetup.exe'
  silentArgs   = '/S'
  softwareName = 'WeChat*'
  checksum     = 'BD45B8A549F24E4D98B628D2B1EB6C4E65B210FAF5015232F1A6033B4033C50479F1FC8733461BD9A2821AA21CA1B4ECCCA37D3ACA4F6FCDEFDDAB2AAC3E91DC'
  checksumType = 'sha512'
}

Install-ChocolateyPackage @packageArgs
