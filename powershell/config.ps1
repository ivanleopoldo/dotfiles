[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
$env:PYTHONIOENCODING="utf-8"
$env:Path += "C:\Users\ivanl\scoop\shims\"

function cpwd{
    (Get-Location).Path | clip
}

function frm{
    param(
        [CmdletBinding()]
	[Parameter(Mandatory=$true)] [string] $toDelete
    )
    iex "Remove-Item -Force $toDelete"
}

function newtab{
    wt -w 0 -d .
}

function c{
    param(
        [CmdletBinding()]
        [Parameter(Mandatory=$true)] [string] $filename
    )
    if(!$filename.contains(".c")){
        $filename += ".c"
    }

    gcc $filename -o "a.exe" && ./a.exe
}

function touch{
    param(
        [CmdletBinding()]
	[Parameter(Mandatory=$true)] [string] $filename
    )
    New-Item -Force $filename
}

Set-Alias -Name "grep" -Value "findstr"

Import-Module Terminal-Icons
Import-Module PSFzf

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

Import-Module PSReadLine

Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+p' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

Invoke-Expression (&starship init powershell)
Import-Module ZLocation
