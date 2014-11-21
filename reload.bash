#!/bin/bash

mysql -u root < 00-extra/db/create-empty-database.sql
php app/console doctrine:schema:update --force

#php app/console doctrine:fixtures -n
#php app/console fos:user:create admin admin@example.net loremipsum --super-admin




