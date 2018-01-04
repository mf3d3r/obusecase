#!/bin/bash

sudo apt-get update && sudo apt-get install -y apache2
/etc/init.d/apache2 restart
touch /var/www/html/testpage.html
TESTPAGE="/var/www/html/testpage.html"
echo "<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">" >> $TESTPAGE
echo "<html>" >> $TESTPAGE
echo "<head>" >> $TESTPAGE
echo "<title>Webserver test</title>" >> $TESTPAGE
echo "</head>" >> $TESTPAGE
echo "<body>" >> $TESTPAGE
echo "This is a webserver test page." >> $TESTPAGE
echo "</body>" >> $TESTPAGE
echo "</html>" >> $TESTPAGE