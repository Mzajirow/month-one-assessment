#!/bin/bash
set -euxo pipefail
yum update -y
amazon-linux-extras enable postgresql14
yum install -y postgresql-server
postgresql-setup initdb
systemctl start postgresql
systemctl enable postgresql
