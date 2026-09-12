param(
    [string]$ProjectPath = "$HOME\Desktop",
    [switch]$Preview
)

$actions = @(
    "Open project folder: $ProjectPath",
    "Open Windows Terminal",
    "Create daily note file on Desktop"
)

if ($Preview) {
    $actions | ForEach-Object { Write-Host "PREVIEW: $_" }
    exit 0
}

if (Test-Path $ProjectPath) {
    Start-Process explorer.exe $ProjectPath
}

Start-Process wt.exe
$note = Join-Path $HOME "Desktop\daily-dev-note.txt"
"# Daily developer note`nCreated: $(Get-Date)`n" | Set-Content -Path $note -Encoding UTF8
Write-Host "Workspace started safely."
