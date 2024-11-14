:: Script para exibir a data e a hora atuais
 echo %date% %time%

:: Script para copiar um arquivo para outra pasta 
  copy C:\Users\user\file.txt D:\Backup\file.txt

:: Script para executar um ping em um site
  ping www.bing.com

:: Script Calculo 
C:\Users\user>@set a=5
C:\Users\user>@set b=2
C:\Users\user>@set/a"c=%a%+%b%"
7
C:\Users\user>echo O resultado é :%c%
O resultado é :7

:: Script Comparador
C:\Users\user>@set n1=5
C:\Users\user>@set n2=2
C:\Users\user>if %n1% gtr %n2% (echo O número 1 é maior que o número 2.) else if %n1%¨Iss %n2% (echo O número 1 é menor que o número 2.) else (echo Os números são iguais.)

::Script Criar Pasta e Arquivo.txt
C:\Users\user>mkdir MinhaPasta
C:\Users\user>type nul>meuarquivo.txt
C:\Users\user>cd MinhaPasta
 Pasta de C:\Users\user\MinhaPasta

14/11/2024  12:26    <DIR>          .
14/11/2024  12:26    <DIR>          ..
14/11/2024  12:26                 0 meuarquivo.txt
::aqui vemos que o arquivo realmente foi para a pasta "MinhaPasta" dir verifica o que tem no local


:: Renomear arquivo 
C:\Users\user\MinhaPasta>ren meuarquivo.txt arquivo.txt
Pasta de C:\Users\user\MinhaPasta

14/11/2024  12:36    <DIR>          .
14/11/2024  12:36    <DIR>          ..
14/11/2024  12:26                 0 arquivo.txt

:: Comando pra voltar pro menu principal e remover pasta
C:\Users\user\MinhaPasta>cd ..

C:\Users\user>rmdir/s/q MinhaPasta







