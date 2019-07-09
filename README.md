# UnityJDBC_postgresql_docker_image

### Step 1:
[Install Docker](https://docs.docker.com/install/)

### Step 2:
Clone the repository
### Step 3:
cd into UnityJDBC_postgresql_docker_image folder
### Step 4:
$: docker image build -t custom_postgresql_image .
### Step 5:
docker run -it --name custom_postgresql_cont custom_postgresql_image:latest
#### Wait for all inserts to complete 
### Step 6:
docker exec -it custom_postgresql_cont bash
### Step 7:
cd ../opt/mssql-tools/bin/
### Step 8:
./sqlcmd -U SA -P UnityJDBC321!
