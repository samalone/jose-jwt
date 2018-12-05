cd $PSScriptRoot
#$apiKey = Get-Content "\\Mac\Dropbox for Business\Business Dropbox for Antigen Plus\nuget-api-key.txt"
$package = gci *.nupkg | sort LastWriteTime | select -Last 1
#..\tools\nuget.exe push $package $apiKey -Source http://antigenplusnuget.azurewebsites.net/nuget

$packageDir = "\\Mac\Dropbox for Business\Business Dropbox for Antigen Plus\Antigen Plus\packages"
..\tools\nuget.exe add $package -source $packageDir
