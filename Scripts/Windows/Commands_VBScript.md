'Script para exibir uma mensagem na tela <br>
MsgBox "ola mundo!"

'Script para criar uma pasta no desktop<br>
Set objFSO = CreateObject("scripting.FileSystemObject")<br>
strDesktop = objFSO.GetSpecialFolder(0)<br>
objFSO.CreateFolder strDesktop & "\Nova Pasta"

'Script para abrir o Internet Explorer e navegar para um site Set objIE = CreateObject("InternetExplorer.Application")<br>
objIE.Visible = True <br>
objIE.Navigate "https://www.bing.com"
