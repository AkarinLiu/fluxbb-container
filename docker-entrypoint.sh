#!/bin/bash
if [ -e ! /var/www/html/index.php ]; then
    echo "Extracting files..."
    cp -r /data/* /var/www/html/
    chown -R www-data:www-data /var/www/html/
    chmod -R 755 /var/www/html/
    echo "Files extracted."
fi
echo "Starting Fluxbb..."
httpd -D FOREGROUND