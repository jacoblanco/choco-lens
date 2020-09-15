$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'lens'
$fileType	= 'exe'
$url	= 'https://github.com/lensapp/lens/releases/download/v3.6.0/Lens-Setup-3.6.0.exe'
$softwareName	= 'Lens*'
$checksum	= '2E07399ECC3A5C2C2F506F7E77AF199F9117688769580537E7D1772EFE394C37'
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
