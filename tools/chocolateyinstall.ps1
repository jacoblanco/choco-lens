$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'lens'
$fileType	= 'exe'
$url	= 'https://github.com/lensapp/lens/releases/download/v3.5.3/Lens-Setup-3.5.3.exe'
$softwareName	= 'Lens*'
$checksum	= 'E50EBCD24A20B4248870C26938540601F0C3EF3F51E331586F72A3F6BCFDF6EB'
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
