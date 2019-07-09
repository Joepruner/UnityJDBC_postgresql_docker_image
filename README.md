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
$:docker run -it --name custom_postgresql_cont custom_postgresql_image:latest
#### Wait for all inserts to complete 
### Step 6:
$:docker start custom_postgresql_cont
### Step 7:
$:docker exec -it custom_postgresql_cont bash
### Step 8:
$:psql
#### Now we are inside the database and we can \l, \dt to see schema, and query to our hearts desire.
