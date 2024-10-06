

REM @echo off

SETLOCAL
SETLOCAL EnableDelayedExpansion

cd D:\_Arquivos\Code\Sourcetree\_Bitbucket_TowerBR\_omniscript\Rclone\batches



call set saida="-"

call Rclone-call-Luiz-backups-gmvault-lgtorresbackup--lsf.bat


pause


for /f "tokens=1-2* delims= " %%a in (!OUTPUT-FILE!) do (
	echo %%a
)

pause