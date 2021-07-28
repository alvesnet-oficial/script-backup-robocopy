# ScriptBackupRobocopy

1. Coloque a estrutura de pasta do ScriptBackup no HD como mostra a figura abaixo.
2. Abre o CMD (Promp de Comando) no Windows e entre na pasta C:\ScripBackup, e execute o arquivo Diario.bat:
3. Apos executar o Script 'Diario.bat' a seguite mensagem abaixo será mostrada com o progresso do Backup.
4. Antes de executar os passos mencionando acima configura a pasta de ORIGEM e DESTINO no Script 'C:\ScripBackup\Diario.bat'.
5. Relatorio do Backup para Analise está localizado em 'C:\ScriptBackup\Logs\Diario\backup_bkp.txt'.

# Passo a Passo:

1. Coloque a estrutura de pasta do ScriptBackup no HD como mostra a figura abaixo.
![Screenshot](Screenshot01.PNG)

2. Abre o CMD (Promp de Comando) no Windows e entre na pasta C:\ScripBackup, e execute o arquivo Diario.bat:
![Screenshot](Screenshot02.PNG)

3. Apos executar o Script 'Diario.bat' a seguite mensagem abaixo será mostrada com o progresso do Backup.
![Screenshot](Screenshot03.PNG)

4. Antes de executar os passos mencionando acima configura a pasta de ORIGEM e DESTINO no Script 'C:\ScripBackup\Diario.bat'.
- ![Screenshot](Screenshot04.PNG)

5. Relatorio do Backup para Analise está localizado em 'C:\ScriptBackup\Logs\Diario\backup_bkp.txt'.
![Screenshot](Screenshot05.PNG)

# Serviço de Backup Ativado na Incialização do 'Services.msc':

C:\ScriptBackup\exe>sc create "ALVESNET Backup - AoLigar" binpath=c:\ScriptBackup\exe\AoLigar.exe
[SC] CreateService ÊXITO

# Executar Backup pelo Agendador de Tarefas do Windows com usuários sem privilégios de Administrador:

C:\Windows\System32\runas.exe /user:Administrador /savecred /noprofile C:\ScriptBackup\exe\AoLigar.exe

# Agendador de Tarefas do Windows Executador o Script acima após sessão do usuario com repetição da tarefas a cada 10 minutos.

# Windows CMD commands:

https://ss64.com/nt/
