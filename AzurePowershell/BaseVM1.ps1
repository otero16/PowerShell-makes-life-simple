Set-ExecutionPolicy Unrestricted
Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature -IncludeManagementTools
$url = \"https://live.sysinternals.com/PsPing.exe\""
$output = \"$env:USERPROFILE\\PsPing.exe\""
Invoke-WebRequest -Uri $url -OutFile $output"
$url1 = "https://1.na.dl.wireshark.org/win64/Wireshark-win64-4.0.4.exe"
$output1 = "$env:TEMP\Wireshark-win64-4.0.4.exe
Invoke-WebRequest -Uri $url1 -OutFile $output1
Start-Process -FilePath $output1 -ArgumentList "/S" -Wait
