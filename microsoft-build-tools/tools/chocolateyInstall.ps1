$packageName = 'microsoft-build-tools'
$installerType = 'EXE'
$url = 'https://download.microsoft.com/download/4/3/3/4330912d-79ae-4037-8a55-7a8fc6b5eb68/buildtools_full.exe'
$checksum = '243EACE2D62A208048F562C7F6FFED1912DBFD254D7F9EE00C7D760B36B42416'
$checksumType = 'sha256'
$silentArgs = "/Passive /NoRestart /Log ""$($env:temp)\microsoft-build-tools-2015.log"""
$validExitCodes = @(0,3010)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -checksum $checksum -checksumType $checksumType -validExitCodes $validExitCodes