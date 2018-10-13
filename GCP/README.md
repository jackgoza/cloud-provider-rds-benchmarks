GCP GCP GCP

MySQL

1) Get relevant data from GCP RDS config. You'll need:
	a) public ip address for your GCP RDS (${host-address})
	b) mysql username (unless otherwise configured, root) (${username})
	c) mysql password (${password})
2) Find your current IP address (google what's my ip and it should pop up). Go to your GCP Console -> Your RDS service console -> Connections. Under "Public IP" enter your IP address in the "Add network" button. Save your configuration. Your IP address should now appear in "Authorized Networks".
3) you'll need to create a db for your test data. I chose to call mine sbtest. I used a gui SQL client to do so but you could easily use command line.
4) select a table size. I chose 200k to start with
5) sysbench --mysql-host=${host-address} --mysql-user=${username} --mysql-password=${password} --mysql-db="sbtest" --db-driver=mysql --table_size=${table-size} /usr/share/sysbench/oltp_read_write.lua prepare 

this prepares your data for running the benchmarking queries

6) Run em for different thread counts: 
sysbench --db-driver=mysql --mysql-user=${username} --mysql-password=${password} --mysql-host=${host-address} --mysql-db="sbtest" --mysql-ignore-errors=1062,1213 --rand-type=uniform --table_size=${table-size} --threads=${thread-count} /usr/share/sysbench/oltp_read_write.lua run > /your/desired/local/path/GCP-RDS-RW-${thread-count}T
