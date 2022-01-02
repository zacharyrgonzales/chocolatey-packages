$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/argoproj-labs/argocd-autopilot/releases/download/v0.2.28/argocd-autopilot-windows-amd64.tar.gz'
$checksum64 = '61D27AE46A8482C7AE08AC94C3B5F889C3DA49CBACB79925E90974B17ECCDE9B'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  FileFullPath  = "$toolsDir\argocd-autopilot.exe"
  
  url64bit        = $url64
  checksum64      = $checksum64
  checksumType64  = 'sha256'  
}

Get-ChocolateyWebFile @packageArgs