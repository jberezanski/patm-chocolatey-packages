﻿$packageName = 'windows-sdk-10.0'
$installerType = 'EXE'
$url = 'http://download.microsoft.com/download/6/A/2/6A2ECE81-C934-4E47-91CC-52DA00A65345/sdksetup.exe'
$checksum = 'D1C0AA957F15661F00CFA633E9DAFB39A26D6557'
$checksumType = 'sha1'
$silentArgs = "/Quiet /NoRestart /Log ""$env:temp\$packageName.log"""
$validExitCodes = @(0,3010)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksumType $checksumType -checksum $checksum