@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
cinst notepadplusplus.install
cinst javaruntime
cinst GoogleChrome
cinst Firefox
cinst vlc
cinst 7zip.install
cinst git