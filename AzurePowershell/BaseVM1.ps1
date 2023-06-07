#Install IIS on the server for default website
Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature -IncludeManagementTools
#Locate the URL for the psping.exe file
$url = "https://live.sysinternals.com/psping.exe"
$output = "$env:USERPROFILE\psping.exe"
#Download psping and output the file to the user profile folder to be ready for use
Invoke-WebRequest -Uri $url -OutFile $output"
#locate the URL for wireshark download
$url1 = "https://2.na.dl.wireshark.org/win64/Wireshark-win64-4.0.6.exe"
$output1 = "$env:TEMP\Wireshark-win64-4.0.4.exe"
# Start the download and save the output file in the temp folder
Invoke-WebRequest -Uri $url1 -OutFile $output1
#Execute the installer silently
Start-Process -FilePath $output1 -ArgumentList "/S" -Wait
