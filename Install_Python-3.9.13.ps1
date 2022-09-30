Write-Output ">>> Creating new directory C:\buildArtifacts"
New-Item -ItemType Directory C:\buildArtifacts

Write-Output ">>> Downloading Python 3.9.13 ..."
Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.9.13/python-3.9.13-amd64.exe" -OutFile "c:\buildArtifacts\python-3.9.13-amd64.exe"

Write-Output ">>> Running silent Python install ..."
Start-Process "c:\buildArtifacts\python-3.9.13-amd64.exe" -ArgumentList "/quiet InstallAllUsers=1 PrependPath=1"