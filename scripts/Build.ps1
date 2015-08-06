Function Build()
{
    $msbuild = $env:MSBUILD
    $solutionPath = Join-Path $solutionDir 'Winium.Elements.sln'

    &$msbuild ($solutionPath, '/v:minimal', '/p:configuration=Release', '/t:Clean,Build')
    if (!$?) {
        Write-Host "Build failed. $?" -ForegroundColor Red
        Exit 1
    }
}


$workspace = $PSScriptRoot
$solutionDir = Join-Path $workspace "../src"

Build
