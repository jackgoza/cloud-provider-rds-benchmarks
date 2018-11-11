mkdir ~/results/1table ~/results/1table/200k

sysbench --db-driver=mysql --mysql-user=root --mysql-password=jack1goza  --mysql-db="sbtest" --mysql-ignore-errors=1062,1213 --rand-type=uniform --table_size=200000 --threads=1 /usr/share/sysbench/oltp_read_write.lua run > ~/results/1table/200k/GCP-RDS-RW-1T


sysbench --db-driver=mysql --mysql-user=root --mysql-password=jack1goza  --mysql-db="sbtest" --mysql-ignore-errors=1062,1213 --rand-type=uniform --table_size=200000 --threads=2 /usr/share/sysbench/oltp_read_write.lua run > ~/results/1table/200k/GCP-RDS-RW-2T


sysbench --db-driver=mysql --mysql-user=root --mysql-password=jack1goza  --mysql-db="sbtest" --mysql-ignore-errors=1062,1213 --rand-type=uniform --table_size=200000 --threads=4 /usr/share/sysbench/oltp_read_write.lua run > ~/results/1table/200k/GCP-RDS-RW-4T


sysbench --db-driver=mysql --mysql-user=root --mysql-password=jack1goza  --mysql-db="sbtest" --mysql-ignore-errors=1062,1213 --rand-type=uniform --table_size=200000 --threads=8 /usr/share/sysbench/oltp_read_write.lua run > ~/results/1table/200k/GCP-RDS-RW-8T


sysbench --db-driver=mysql --mysql-user=root --mysql-password=jack1goza  --mysql-db="sbtest" --mysql-ignore-errors=1062,1213 --rand-type=uniform --table_size=200000 --threads=16 /usr/share/sysbench/oltp_read_write.lua run > ~/results/1table/200k/GCP-RDS-RW-16T