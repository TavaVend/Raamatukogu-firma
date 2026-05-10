#!/bin/bash

DATE=$(date +%Y-%m-%d)
BACKUP_DIR="/backup"
FILENAME="backup_$DATE.sql"

pg_dump -U $POSTGRES_USER $POSTGRES_DB > $BACKUP_DIR/$FILENAME

echo "Backup tehtud: $FILENAME"

# Kustuta vanemad kui 7 päeva
find $BACKUP_DIR -name "*.sql" -mtime +7 -delete
