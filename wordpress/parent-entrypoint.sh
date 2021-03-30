#!/bin/sh
while /bin/true; do
  curl --request POST \
    --url 'http://localhost/wp-admin/install.php?step=2' \
    --header 'Content-Type: multipart/form-data' \
    --form weblog_title="$WORDPRESS_TITLE" \
    --form user_name="$WORDPRESS_USER" \
    --form admin_password="$WORDPRESS_PASSWORD" \
    --form admin_password2="$WORDPRESS_PASSWORD" \
    --form pw_weak=on \
    --form admin_email="$WORDPRESS_EMAIL" \
    --form 'Submit=Install WordPress' \
    --form language=en_CA \
    | grep -q "already installed WordPress" && break
  sleep 3
done &

