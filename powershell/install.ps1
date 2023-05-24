ForEach ($item in(Get-Content .\powershell\modules.txt)){
    echo "Installing $item"
    Install-Module $item 
}