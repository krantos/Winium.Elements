﻿Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
#------------------------------

$configuration = 'Release'
$solutionDir = Join-Path $PSScriptRoot "../src"
$solution = Join-Path $solutionDir 'Winium.Elements.sln'
$project = Join-Path $solutionDir 'Winium.Elements.Desktop\Winium.Elements.Desktop.csproj'
$testFile = Join-Path $solutionDir "Tests\Winium.Elements.Desktop.Tests\bin\$configuration\Winium.Elements.Desktop.Tests.dll"
$releaseDir = Join-Path $PSScriptRoot '../Release'
$assemblyInfoPath = Join-Path $solutionDir 'Winium.Elements.Desktop\Properties\AssemblyInfo.cs'
$changelogPath = Join-Path $PSScriptRoot '..\CHANGELOG.md'
$nuspecPath = Join-Path $solutionDir 'Winium.Elements.Desktop\Winium.Elements.Desktop.nuspec'
$githubProjectName = 'Winium.Elements'

$msbuildProperties = @{
    'Configuration' = $configuration
}
