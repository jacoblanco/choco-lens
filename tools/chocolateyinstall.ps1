$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'lens'
$fileType	= 'exe'
$url	        = 'https://github.com/lensapp/lens/releases/download/v3.6.3/Lens-Setup-3.6.3.exe'
$softwareName	= 'Lens*'
$checksum	= 'E0EDE164028AB962B992E36E574C21628888586C871EF5575E5D3AC7B9161754'
$checksumType	= 'sha256'
$validExitCodes	= @(0, 3010, 1605, 1614, 1641)

	$packageArgs = @{
	  packageName    = $env:ChocolateyPackageName
	  fileType	 = $fileType
	  url		 = $url
	  checksum       = $checksum
	  checksumType	 = $checksumType
	  validExitCodes = $validExitCodes  
	}

Install-ChocolateyPackage @packageArgs
