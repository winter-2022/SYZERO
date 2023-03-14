param(
    [int]$major = 1,
    [int]$minor = 1,
    [int]$patch = 0,
    [string]$tag,
    [string]$ref
)

$ProductMajorVersion = $major
$ProductMinorVersion = $minor
$ProductpatchVersion = $patch
$MyCustomBuildVersion = "$ProductMajorVersion.$ProductMinorVersion.$ProductpatchVersion"

if ($ref) {
    $tag = $ref.Split("/")[-1].Replace("_","-")
}
if ($tag -and $tag -ne "master") {
    $BaselineYear = 2023
    $CurrentDate = (Get-Date).ToUniversalTime()
    $StartOfDay = Get-Date -Date $CurrentDate -Hour 0 -Minute 00 -Second 00
    $BuildMajorVersion = ($CurrentDate.Year - $BaselineYear) * 12 + $CurrentDate.Month
    $BuildMajorVersion = $BuildMajorVersion * 31 + $CurrentDate.Day
    $BuildMinorVersion = [math]::floor(((New-TimeSpan -Start $StartOfDay -End $CurrentDate).TotalSeconds) / 2)
    $MyCustomBuildVersion = "$MyCustomBuildVersion-$tag.$BuildMajorVersion.$BuildMinorVersion"
}
$env:BUILD_BUILDNUMBER = $MyCustomBuildVersion
[Environment]::SetEnvironmentVariable("BUILD_BUILDNUMBER", $MyCustomBuildVersion, "Machine")
echo "BUILD_BUILDNUMBER=$MyCustomBuildVersion" >> $env:GITHUB_OUTPUT
echo "BUILD_BUILDNUMBER=$MyCustomBuildVersion" >> $env:GITHUB_ENV
Write-Host "Setting the value of current build version :  $MyCustomBuildVersion"

dir env: