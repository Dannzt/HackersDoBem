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
