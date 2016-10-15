HOST="ftp.servidor.com"
USER="usuario@servidor.com"
PASS="contraseña"
FTPURL="ftp://$USER:$PASS@$HOST"
CURRENT_COPY="/home/directorio/copia_ftp"
REMOTE_DIR="."
lftp -c "set ftp:list-options -a;
set ftp:ssl-allow off;
set ssl:verify-certificate no;
open '$FTPURL';
lcd $CURRENT_COPY;
cd $REMOTE_DIR;
mirror --verbose --exclude-glob directorio/subdirectorio/ --exclude-glob archivo";
