$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'lens'
$fileType	= 'exe'
$url	= 'https://github.com/lensapp/lens/releases/download/v3.5.2/Lens-Setup-3.5.2.exe'
$softwareName	= 'Lens*'
$checksum	= 'CF1C203759418FE322F751B8CE35C9672C068277A4373AA82C995019AFE5B905'
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
