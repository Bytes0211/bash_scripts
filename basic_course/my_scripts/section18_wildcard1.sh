#!/bin/bash

# navigate to desired directory
cd /var/www/angular-site

# check for html files
echo "html files in angular-site directory."
for FILE in *.html
do
	echo "File ${FILE}"
done

