# UnityJDBC_postgresql_docker_image

### Step 1:
[Install Docker](https://docs.docker.com/install/)

### Step 2:
Clone the repository
### Step 3:
cd into UnityJDBC_postgresql_docker_image folder
### Step 4:
$: docker image build -t postgresql_image .
### Step 5:
$:docker run -it -p 5432:5432 --name postgresql_cont postgresql_image:latest
#### Wait for all inserts to complete 
### Step 6:
$:docker start postgresql_cont
### Step 7:
$:docker exec -it postgresql_cont bash
#### This gives us access to a bash shell for exploring the container.
### Step 8:
$:psql
### Alternate Step 7:
$: docker exec -it postgresql_cont psql
#### This will skip a step and take us directly into the database 

### You can also avoid building the image if you like, and just load the .tar file, and continue from step 5.
docker load -i <path to image tar file>

#### Now we are inside the database and we can \l, \dt to see schema, and query to our hearts desire.

#### Super helpful:
[Docker Cheat Sheet](https://www.docker.com/sites/default/files/Docker_CheatSheet_08.09.2016_0.pdf)


