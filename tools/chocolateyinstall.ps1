$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'lens'
$fileType	= 'exe'
$url	= 'https://github.com/lensapp/lens/releases/download/v3.5.0/Lens-Setup-3.5.0.exe'
$softwareName	= 'Lens*'
$checksum	= 'A876D8BCB5BC240C5F6A3AF67445449351BAFB2DAAF333633FACD7CB7253A378'
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
