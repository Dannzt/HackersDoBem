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

#Comando para verificar se em algum caminho especifico existem algum arquivo malicioso, mais focado na segurança do sistema
$chaveMaliciosa = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run\EncryptorMalicioso"
if (Test-Path $chaveMaliciosa) {
 Write-Host "Removendo chave maliciosa do Registro..."
 Remove-Item -Path $chaveMaliciosa -Force
 Write-Host "Chave maliciosa removida com sucesso."
} else {
 Write-Host "Nenhuma chave maliciosa encontrada no Registro."
}

#Mensagem criptografada 
# Encryption Key (16, 24, or 32 bytes)
$encryptionKey = [Text.Encoding]::UTF8.GetBytes("MySecretEncryptionKey")
# Text to encrypt
$textToEncrypt = "SENAI 123."
# Convert the text to bytes
$bytesToEncrypt = [Text.Encoding]::UTF8.GetBytes($textToEncrypt)
# Create AES encryption object
$aes = [System.Security.Cryptography.Aes]::Create()
$aes.Mode = [System.Security.Cryptography.CipherMode]::CBC
$aes.Padding = [System.Security.Cryptography.PaddingMode]::PKCS7
$aes = [System.Security.Cryptography.Aes]::Create()
$aes.Mode = [System.Security.Cryptography.CipherMode]::CBC
$aes.Padding = [System.Security.Cryptography.PaddingMode]::PKCS7
# Generate a random IV (Initialization Vector)
$aes.GenerateIV()
# Create an encryption stream
$encryptor = $aes.CreateEncryptor()
# Encrypt the bytes
$encryptedBytes = $encryptor.TransformFinalBlock($bytesToEncrypt, 0, $bytesToEncrypt.Length)
# Convert the encrypted bytes to Base64 for storage
$encryptedText = [Convert]::ToBase64String($aes.IV + $encryptedBytes)
# Display the encrypted text
Write-Host "Encrypted Text: $encryptedText"
# mensagem criptografada de "SENAI 123"
Encrypted Text: q44kKIDzO84U/QJJlZs3QjTULPW+PtnhWrZhKosneEM=

#Comando Descriptografando mensagem 
# Convert the Base64 encrypted text back to bytes
$encryptedBytesWithIV = [Convert]::FromBase64String($encryptedText)
$iv = $encryptedBytesWithIV[0..15]
$encryptedBytesOnly = $encryptedBytesWithIV[16..($encryptedBytesWithIV.Length - 1)]
# Set the IV and decrypt
$aes.IV = $iv
$decryptor = $aes.CreateDecryptor()
$decryptedBytes = $decryptor.TransformFinalBlock($encryptedBytesOnly, 0, $encryptedBytesOnly.Length)
# Convert the decrypted bytes back to text
$decryptedText = [Text.Encoding]::UTF8.GetString($decryptedBytes)
# Display the decrypted text
Write-Host "Decrypted Text: $decryptedText"
Decrypted Text: SENAI 123.

#Este script exibe informações sobre a política de execução, políticas de mitigação de processo e preferências de detecção do Windows Defender. 
Get-ExecutionPolicy
Get-ProcessMitigation -System
Get-MpPreference | Select-Object -Property *Detection*

#Este script lista as conexões TCP ativas e verifica a conectividade com uma porta específica.
Get-NetTCPConnection | Select-Object -Property LocalAddress, LocalPort, RemoteAddress, RemotePort, State
Test-NetConnection -ComputerName localhost -Port 80

#Este script analisa eventos de logon no log de segurança do Windows.
Get-WinEvent -LogName Security | Where-Object { $_.Id -eq 4624 -or $_.Id -eq 4634 } | Select-Object -Property
TimeCreated, Id, Message

#Este script lista processos que não têm um caminho de arquivo associado, têm um número significativo de identificadores de objeto ou estão usando uma quantidade considerável de CPU.
Get-Process | Where-Object { $_.Path -eq $null -and $_.Handles -gt 500 -and $_.CPU -gt 50 }
