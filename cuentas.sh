#!/bin/bash
# ZIMBRA
# Lista de cuentas masivas de correo 
# Muestra las cuentas mas pesadas de la organización (de manera comprensible por humanos)
#
# USO: cuentas.sh 
# instalar en /opt/zimbra 
# Correr como user zimbra (sudo su zimbra)
# por ej:
# 150GB ... cuenta@organizacion.coop
# 50GB ... cuenta2@organizacion.coop
# 25GB ... cuenta3@organizacion.coop 

zmprov gqu $(zmhostname) | awk '{ $2="";suffix=" KMGT"; for(i=1; $3>1024 && i < length(suffix); i++) $3/=1024; printf "%6s%c ... %s\n", int($3),substr(suffix, i, 1), $1; }' | sort -rh

exit 0
