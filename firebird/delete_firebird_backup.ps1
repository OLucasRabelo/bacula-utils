﻿##################################################################################
# Config 
$rootFolder      = "C:\firebird"                      # Root folder of firebird database
$backupFolder    = $rootFolder + "\" + "backup"       # Backup Folder
$fbBackup        = "database.fbk"                     # Backup file (.fbk)
$fbLog           = "database.log"                     # Log file (.log)

# Verify if firebird dump and firebird log already exists in backup folder and exclude them
$file1 = $backupFolder + "\" + $fbBackup;
$file2 = $backupFolder + "\" + $fbLog;
if( Test-Path $file1){
  Remove-Item $file1
  Write-Host "Arquivo $file1 excluido com sucesso!"
}
if( Test-Path $file2){
  Remove-Item $file2
  Write-Host "Arquivo $file2 excluido com sucesso!"
}	
Exit 0
