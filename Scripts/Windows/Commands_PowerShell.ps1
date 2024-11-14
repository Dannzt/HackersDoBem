#Script para listar os processos em execução no sistema <br>
  Get-Process Format-Table -AutoSize

#Script para criar um arquivo zip com os arquivos de uma pasta<br>
  $source = "C:\Users\user\Documents"<br>
  $destination = "C:\Users\user\Documents.zip"<br>
  Compress-Archive -Path $source -DestinationPath $destination

#Script para enviar um email usando o Outlook<br>
  $Outlook New-Object-Comobject Outlook.Application<br>
  $Mail $Outlook.CreateItem(0)<br>
  $Mail.To = "destinatario@email.com"<br>
  $Mail.Subject = "Assunto do email"<br>
  $Mail.Body = "Corpo do email"<br>
  $Mail.Send()
