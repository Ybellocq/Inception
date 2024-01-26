cd /var/www/wordpress

# Sleep necessary for mariaDB execute correctly
sleep 10

if [ ! -e /var/www/wordpress/wp-config.php ]; then

    sed -i "s/username_here/$WORDPRESS_USER/g" /var/www/wordpress/wp-config-sample.php
	sed -i "s/password_here/$WORDPRESS_MDP/g" /var/www/wordpress/wp-config-sample.php
	sed -i "s/localhost/mariadb:3306/g" /var/www/wordpress/wp-config-sample.php
	sed -i "s/database_name_here/$WORDPRESS_DB/g" /var/www/wordpress/wp-config-sample.php
	cp /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php

    wp core install --url=ybellocq.42.fr \
        --title=$SITE_TITLE \
        --admin_user=$WP_USER \
        --admin_password=$WP_MDP \
        --admin_email=$WP_MAIL \
        --allow-root --path='/var/www/wordpress'

    # Create a user using wp-cli
    wp user create --allow-root --role=author $WP_USER1 $WP_MAIL1 \
        --user_pass=$WP_MDP1 --path='/var/www/wordpress' >> /log.txt
fi

if [ ! -d /run/php ]; then
    mkdir /run/php
fi

exec "$@"
