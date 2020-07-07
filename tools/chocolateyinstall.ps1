$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'lens'
$fileType	= 'exe'
$url	= 'https://github.com/lensapp/lens/releases/download/v3.5.1/Lens-Setup-3.5.1.exe'
$softwareName	= 'Lens*'
$checksum	= 'EC2C9369A25D8CE9B06F6D4A628C5EB1BF1FD518D841BEEC10EC38EE35568B90'
$checksumType	= 'sha256'
$validExitCodes		= @(0, 3010, 1605, 1614, 1641)

	$packageArgs = @{
	  packageName   	= $env:ChocolateyPackageName
	  fileType			= $fileType
	  url				= $url
	  checksum      	= $checksum
	  checksumType		= $checksumType
	  validExitCodes	= $validExitCodes  
	}

Install-ChocolateyPackage @packageArgs
