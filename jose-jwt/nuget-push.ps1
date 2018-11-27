cd $PSScriptRoot
$apiKey = Get-Content "\\Mac\Dropbox for Business\Business Dropbox for Antigen Plus\nuget-api-key.txt"
$package = gci *.nupkg | sort LastWriteTime | select -Last 1
..\tools\nuget.exe push $package $apiKey -Source http://antigenplusnuget.azurewebsites.net/nuget
