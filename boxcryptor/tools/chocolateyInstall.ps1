﻿$packageName = 'boxcryptor'
$installerType = 'MSI'
$32BitUrl = 'https://d3k3ih5otj72mn.cloudfront.net/Boxcryptor_v2.0.437.408_Setup.msi'
$silentArgs = '/quiet /norestart'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$32BitUrl" -validExitCodes $validExitCodes