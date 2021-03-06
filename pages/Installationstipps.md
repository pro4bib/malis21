## Windows Subsystem for Linux (WSL)
id:: 6176f76b-0901-43cd-8743-a74351e1a6c1
Auf einem Windows-Rechner ist es für viele Zwecke sinnvoll und wahrscheinlich auch am bequemsten, zunächst das Windows Sybsystem für Linux (WSL) zu installieren. Eine Anleitung gibt es unter https://docs.microsoft.com/de-de/windows/wsl/install. Beim Testen auf dem Windows-Rechner meines Sohnes (mit Windows 10 Home, Version 21H1) musste ich allerdings etwas davon abweichen, um zum gewünschten Ziel zu kommen und zwar so:
1. Windowstaste und Eingabe von "PowerShell"
2. Rechtsklick auf "Windows PowerShell – App" und "Run as administrator"
3. `wsl --install`
4. Neustart des Systems
5. Starten des WSL mit Windowstaste und Eingabe von "WSL", Klick auf das Kommando
## Git Bash/Git for Windows
In Fällen, wo die installierte Windows-Version das WSL noch nicht unterstützt, empfehle ich die Installation von Git Bash/Git for Windows, siehe dazu [https://librarycarpentry.org/lc-shell/setup.html](https://librarycarpentry.org/lc-shell/setup.html), wo es zur Installation heißt:
> we suggest using Git Bash, part of the [Git for Windows](https://gitforwindows.org/) package:
>    - Download the latest Git for Windows [installer](https://gitforwindows.org/).
>    - Double click the `.exe` to run the installer (for example, `Git-2.13.3-64-bit.exe`) using the default settings.
>    - Once installed, open the shell by selecting Git Bash from the start menu (in the Git folder).
Die Nutzung von jq in Git Bash sollte auch möglich sein, siehe etwa [https://stackoverflow.com/questions/53967693/how-to-run-jq-from-gitbash-in-windows](https://stackoverflow.com/questions/53967693/how-to-run-jq-from-gitbash-in-windows)
## curl
	- Linux: in der Regel ist curl schon vorinstalliert ansonsten gibt es [hier](https://everything.curl.dev/get/linux) eine Anleitung
	- macOS: curl ist vorinstalliert (siehe [hier](https://everything.curl.dev/get/macos))
	- Windows: 
	  * ab Windows 10, Version 1804 ist curl in der Windows-Kommandozeile installiert
	  * besser noch:  Installation des ((6176f76b-0901-43cd-8743-a74351e1a6c1)), das curl bereits enthält (und auf dem auch leicht jq installiert werden kann, siehe ((6176d72a-fe2f-4658-95ba-17c17242c017)))
## jq
id:: 6176d72a-fe2f-4658-95ba-17c17242c017
	- Linux: siehe die Anweisungen unter https://stedolan.github.io/jq/download/
	- macOS: siehe https://macappstore.org/jq/
	- Windows:
	  1. Installation des ((6176f76b-0901-43cd-8743-a74351e1a6c1))
	  2. Starten des WSL mit Windowstaste und Eingabe von "WSL", Klick auf das Kommando
	  3. `$ sudo apt update`
	  4. `$ sudo apt install jq`