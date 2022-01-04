#!/bin/bash
# AUTOMATIC BACKUPS 
#-----------------------------

# EDIT THE LINE BELOW TO BACKUP THE DIRECTORIES THAT ARE NEEDED
# TO BE SAVED 
# EDITAR LA LINEA DEBAJO PARA BACKUPEAR LOS DIRECTORIOS NECESARIOS.
# DIRECTORIES TO BACKUP / DIRECTORIOS A LOS CUALES REALIZAR BACKUPS
backupTargets="/home /var/spool/mail /etc /root /boot /opt"

# BACKUPS LOCATION / DIRECTORIO DONDE ARCHIVAR LOS BACKUPS
dumpDir="/mnt/backup"

# CONVERT BACKUPS TO .TGZ WITH DATE / CONVERTIR A .TGZ CON FECHA
day=$(date +%A)
backupID="backup"
arcFile="$backupID-$day.tgz"

# PROGRESS / PROGRESO
echo "Backing up $backupTargets to $dumpDir/$arcFile"
date
echo

# TAR THE BACKUPS / CONVERTIR LOS BACKUPS A TAR
tar czf $dumpDir/$arcFile $backupTargets

# PROGRESS / PROGRESO
echo
echo "Backup finished"
date

# LISTAR LA UBICACION DE LOS BACKUPS MOSTRANDO FILESIZES
ls -lh $dumpDir
