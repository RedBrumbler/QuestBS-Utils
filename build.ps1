Param(
    [Parameter(Mandatory=$false)]
    [Switch]$clean
)

# if user specified clean, remove all build files
if ($clean.IsPresent)
{
    if (Test-Path -Path "build")
    {
        remove-item build -R
    }
}

$NDKPath = Get-Content $PSScriptRoot/ndkpath.txt

if (($clean.IsPresent) -or (-not (Test-Path -Path "build")))
{
    $out = new-item -Path build -ItemType Directory
}

& cmake -G "Ninja" -DCMAKE_BUILD_TYPE="RelWithDebInfo" -S . -B ./build
& cmake --build ./build
$ExitCode = $LastExitCode
exit $ExitCode
