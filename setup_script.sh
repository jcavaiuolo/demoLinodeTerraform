#!/bin/bash -e

# <UDF name="instance_label" Label="INSTANCE_LABEL" example="username" />

exec > >(tee -i /var/log/stackscript.log)

apt update && apt install nginx -y

echo "$LINODE_ID" >> /etc/linodeid

# echo "<h2>$LINODE_ID, $LINODE_LISHUSERNAME, $LINODE_DATACENTERID</h2>" >> /var/www/html/index.nginx-debian.html

echo "<h2>$INSTANCE_LABEL</h2>" >> /var/www/html/index.nginx-debian.html

echo "<img style='height: 100%; width: 100%; object-fit: contain' src='https://linodemo-bucket.us-southeast-1.linodeobjects.com/akamailinode.jpg'</img>" >> /var/www/html/index.nginx-debian.html