#criação de arquivos, e redirenciar para onde você quer
nano aula1.txt 

#criar txt com um programa para depois executar no prompt
namo teste.txt
#!/bin/bash
isvalid=true
count=1
I
while [ $isvalid]
do
echo $count
if [ $count -eq 5];
then
break
if
((count++))
done
#Comando para transformar o txt em um arquivo executavel
chmod +x texte.txt
#executar
./teste.txt
1
2
3
4
5

#Novamente um texto programavel para depois ser executado no prompt
nano exemplo2.txt
#!/bin/bash
for ((count=10; count>0; count--))
do
echo -n "$count "
done
chmod +x texte.txt
./exemplo2.txt
5
4
3
2
1

#Exemplo de Verificação de Atualizações do Sistema:
#!/bin/bash
echo “Verificando atualizações disponíveis...”
apt-get update
apt-get upgrade -s | grep “upgraded”

#Exemplo de Verificação de Vulnerabilidades em Sites:
#!/bin/bash
site="https://www.google.com"
vulnerabilidade="CVE-2014-6271"
echo
resultado=$(curl -s -I "$site" | grep "$vulnerabilidade")
if [ -n "$resultado" ]; then
echo "Vulnerabilidade Shellshock detectada no site $site."
else
echo "Site seguro, nenhuma vulnerabilidade Shellshock detectada."
fi

#1. Criando um Diretório e Copiando um Arquivo:
```bash
#!/bin/bash
echo "Criando um diretório e copiando um arquivo..."
mkdir novo_diretorio
cp arquivo.txt novo_diretorio/
echo "Diretório criado e arquivo copiado."```
#2. Listando Conteúdo de um Diretório e Renomeando um Arquivo:
```bash
#!/bin/bash
echo "Listando conteúdo do diretório e renomeando um
arquivo..."
ls /caminho/do/diretorio
mv antigo_nome.txt novo_nome.txt
echo "Arquivo renomeado."
```
#3. Removendo um Arquivo e Executando um Comando Externo:
```bash
#!/bin/bash
echo "Removendo um arquivo e executando um comando
externo..."
rm arquivo_removido.txt
resultado=$(ls /caminho/do/diretorio)
echo "Conteúdo do diretório: $resultado."
```

#1. Um script que verifica portas abertas em um sistema e alerta sobre portas não autorizadas ou suspeitas.
#!/bin/bash
host="127.0.0.1"
portas=("80" "22" "443" "3389")
for porta in "${portas[@]}"; do
nc -zv "$host" "$porta" > /dev/null 2>&1
if [ $? -eq 0 ]; then
echo "Porta $porta está aberta em $host"
else
echo "Porta $porta está fechada em $host"
fi
done

#2. Um script que analisa logs de autenticação em busca de padrões suspeitos, como múltiplas tentativas de login falhadas.
#!/bin/bash
log_file="/var/log/auth.log"
padrao="Failed password"
if grep -q "$padrao" "$log_file"; then
echo "Padrão suspeito encontrado nos logs de autenticação."
else
echo "Nenhum padrão suspeito encontrado nos logs de
autenticação."
fi

#3. Script de Detecção de Ataques de Força Bruta: - Um script que monitora logs em busca de atividades de força bruta em tentativas de acesso, como tentativas repetidas de login.
#!/bin/bash
log_file="/var/log/auth.log"
limite_tentativas=5
tentativas=$(grep "Failed password" "$log_file" | wc -l)
if [ "$tentativas" -ge "$limite_tentativas" ]; then
echo "Possível ataque de força bruta detectado."
else
echo "Nenhuma atividade de força bruta detectada."
fi

#4. Script de Verificação de Vulnerabilidades em Sistemas: Um script que verifica sistemas em busca de vulnerabilidades conhecidas, usando bancos de dados de CVEs (Vulnerabilidades e Exposições Comuns).
#!/bin/bash
sistema="Ubuntu"
versao="20.04"
vulnerabilidade=$(grep "$sistema $versao" cve_database.txt)
if [ -n "$vulnerabilidade" ]; then
echo "Vulnerabilidade conhecida encontrada no sistema
$sistema $versao."
else
echo "Nenhuma vulnerabilidade conhecida encontrada."
fi

#5. Script de Monitoramento de Arquivos Críticos: Um script que monitora alterações em arquivos críticos do sistema e alerta sobre quaisquer modificações não autorizadas.
#!/bin/bash
diretorio="/diretorio_critico"
while true; do
changes=$(inotifywait -e modify,create,delete
"$diretorio")
echo "Alterações detectadas em: $changes"
done

#6. Script de Análise Forense para Coleta de Evidências: Um script que automatiza a coleta de evidências de um sistema comprometido para análise forense
posterior.
#!/bin/bash
output_dir="/evidencias"
log_file="/var/log/syslog"
mkdir -p "$output_dir"
cp "$log_file" "$output_dir/syslog_copia.log"
echo "Evidências coletadas em $output_dir"
