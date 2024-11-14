#Meu mano Olá mundo
PS C:\Windows\system32> Write-Host "Hello,World!"
Hello,World!

#Script para listar os processos em execução no sistema <br>
  Get-Process Format-Table -AutoSize

#Script para criar um arquivo zip com os arquivos de uma pasta<br>
  $source = "C:\Users\user\Documents"
  $destination = "C:\Users\user\Documents.zip"
  Compress-Archive -Path $source -DestinationPath $destination

#Script para enviar um email usando o Outlook<br>
  $Outlook New-Object-Comobject Outlook.Application<br>
  $Mail $Outlook.CreateItem(0)
  $Mail.To = "destinatario@email.com"
  $Mail.Subject = "Assunto do email"
  $Mail.Body = "Corpo do email"
  $Mail.Send()

  
#Comparação em PowerShell
PS C:\Windows\system32> $a-3
-3
PS C:\Windows\system32> $b-5
-5
PS C:\Windows\system32> if ($a -gt $b) { Write-Host "A é maior que ?" } else { Write-Host "B é maior que ?" }
B é maior que А

#Lista de interações com For
PS C:\Windows\system32> for ($i=1; $i -le 5; $i++) { Write-Host "Iteração $i" }
Iteração 1
Iteração 2
Iteração 3
Iteração 4
Iteração 5

#Comando com uma função com um nome para dar saudação 
PS C:\Windows\system32> function Saudacao {param ([string]$nome)Write-Host "Olá, $nome!" } Saudacao -nome "Daniel"
Olá, Daniel!

#Comando com uma função com duas strings para dar saudação 
PS C:\Windows\system32> function Saudacao {
>> param (
>> [string]$nome,
>> [string]$cumprimento = "Olá"
>> )
>> Write-Host "$cumprimento, $nome!"
>> }
>> # Chamando a função
>> Saudacao -nome "Daniel"
>> Saudacao -nome "Daniel" -cumprimento "Bom dia"
Olá, Daniel!
Bom dia, Daniel!


