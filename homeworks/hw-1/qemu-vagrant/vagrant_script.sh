#! /bin/bash
#

CPUTEST_PATH="/vagrant_data/cputests.sh"
FILEIOTEST_PATH="/vagrant_data/fileiotests.sh"

sudo apt-get update
sudo apt-get install -y sysbench
chmod +x /vagrant_data/cputests.sh
chmod +x /vagrant_data/fileiotests.sh

"$CPUTEST_PATH"
"$FILEIOTEST_PATH"

