#!/bin/bash
if [ -e ! /var/www/html/index.php ]; then
    echo "Copying files..."
    cp -r /data/* /var/www/html/
    chown -R www-data:www-data /var/www/html/
    chmod -R 755 /var/www/html/
fi
echo "Starting Fluxbb..."
httpd -D FOREGROUND