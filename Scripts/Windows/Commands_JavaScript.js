// Script para exibir uma mensagem na tela 
  WScript.Echo("Olá mundo!");
// Script para criar um arquivo de texto no desktop
  var fso = new ActiveXObject("Scripting.FileSystemObject");
  var desktop = fso.GetSpecialFolder(0);
  var file fso.CreateTextFile(desktop + "\\Arquivo.txt", true); file.WriteLine("Este é um arquivo de texto criado por um script.");
  file.close();

// Script para abrir o Notepad e escrever algo nele var shell = new ActiveXObject("WScript.Shell");
  shell. Run("notepad.exe");
  WScript.Sleep(1000);
  shell.SendKeys("Este é um texto escrito por um script.");
