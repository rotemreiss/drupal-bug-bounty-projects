#!/bin/bash

while read module; do
  composer require --no-update --update-no-dev --prefer-dist "drupal/$module"
done < ./d8.txt

composer update

composer install --prefer-dist
