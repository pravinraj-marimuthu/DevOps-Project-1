# Project Description

  1. Setup dev and prod branches in Github Repositories.
  2. Setup dev and prod repositories in Dockerhub.
  3. If dev branch in Github receives a new push event, a Jenkins job will build and push the docker image to dev repo in Dockerhub with a dynamic tag.
  4. If dev is merged to a prod, Github Actions will pull the latest image from dev repo and push it to prod repo in Dockerhub.
  5. Deploy the latest image from prod repo to an EC2 instance.
  6. Monitor the web application availability using Prometheus and Grafana.

# Version control using Github

![image](https://github.com/user-attachments/assets/68017333-0295-41ca-9afd-e2d5a67bf45c)

![image](https://github.com/user-attachments/assets/963fd798-e184-4662-9a37-14db2b033ee3)

# Dockerizing the application

**Dockerhub**

![image](https://github.com/user-attachments/assets/30a05e32-cb9b-4525-bc5a-ad86a2585430)

**Contanerization using Docker**

  1. [Dockerfile](https://github.com/pravinraj-marimuthu/My-React-App/blob/prod/build/Dockerfile)
  2. [Docker compose](https://github.com/pravinraj-marimuthu/My-React-App/blob/prod/build/compose.yaml)

# Automating Builds and Deployments using Bash Scripting, Jenkins and Github Actions

**Scripts**

  1. [build.sh](https://github.com/pravinraj-marimuthu/My-React-App/blob/prod/build/build.sh)
  2. [deploy.sh](https://github.com/pravinraj-marimuthu/My-React-App/blob/prod/build/deploy.sh)

**Jenkins job configuration**

![image](https://github.com/user-attachments/assets/efcbdeba-8b77-462d-950b-c7951c90573b)
![image](https://github.com/user-attachments/assets/4fbeacba-2462-4643-b6b1-bb2b592db351)
![image](https://github.com/user-attachments/assets/d624665b-0547-48a6-9eeb-622d4a4bb539)
![image](https://github.com/user-attachments/assets/f35f0a6f-e81d-497d-b53f-98cf6aa399a9)
![image](https://github.com/user-attachments/assets/d99b4ce2-ac66-4732-8f7b-a3f7d22a9351)

**Github Actions**

Workflow conf file - [prodpush.yml](https://github.com/pravinraj-marimuthu/My-React-App/blob/prod/.github/workflows/prodpush.yml)

![image](https://github.com/user-attachments/assets/0c1352d4-9663-4312-9ecb-9e227542e22c)

**AWS EC2 Web Application server**

![image](https://github.com/user-attachments/assets/3058f81c-6d30-47a0-a4e8-c6543682c264)

# Monitoring the application using Prometheus and Grafana

**Prometheus**

Configuration file - [prometheus.yaml](https://github.com/pravinraj-marimuthu/My-React-App/blob/prod/prometheus/prometheus.yml)

![image](https://github.com/user-attachments/assets/9624aa5e-63cd-4094-ad08-5470512972d0)

**Grafana**

Configuration file - [grafana.ini](https://github.com/pravinraj-marimuthu/My-React-App/blob/dev/grafana/grafana.ini)

*Data source* 

  ![image](https://github.com/user-attachments/assets/f4bbdb67-2908-4b6c-91c6-75c8c325da7d)

*Contact point*

  ![image](https://github.com/user-attachments/assets/66b1a7ad-90a4-40f5-aef6-edc375d31de4)

*Alert rules*

  ![image](https://github.com/user-attachments/assets/58676a66-fe25-4ee5-8cc9-e8989836821a)

*Notification policies*

  ![image](https://github.com/user-attachments/assets/f9833ecc-c49a-414e-bd26-e9df744b6339)

___

# Production-ready React app architecture flow

**Pushing commits to dev branch**

  ![image](https://github.com/user-attachments/assets/4d449d5e-b1f1-4450-8bba-727d5eed444c)
  ![image](https://github.com/user-attachments/assets/0528b26d-69f4-42ce-9ba5-3421593b1cb3)

**Jenkins hooks detects a push event and triggers the jenkins job**

  ![image](https://github.com/user-attachments/assets/287bee00-9635-4f06-9915-5674b773ae86)

*Console output*

    ![image](https://github.com/user-attachments/assets/1965472b-0874-4da6-a99b-5893d6cd1d05)
    
    Started by GitHub push by pravinraj-marimuthu
    Running as SYSTEM
    Building in workspace /var/lib/jenkins/workspace/React App using Docker
    The recommended git tool is: NONE
    No credentials specified
     > git rev-parse --resolve-git-dir /var/lib/jenkins/workspace/React App using Docker/.git # timeout=10
    Fetching changes from the remote Git repository
     > git config remote.origin.url https://github.com/pravinraj-marimuthu/My-React-App.git # timeout=10
    Fetching upstream changes from https://github.com/pravinraj-marimuthu/My-React-App.git
     > git --version # timeout=10
     > git --version # 'git version 2.40.1'
     > git fetch --tags --force --progress -- https://github.com/pravinraj-marimuthu/My-React-App.git +refs/heads/*:refs/remotes/origin/* # timeout=10
     > git rev-parse refs/remotes/origin/dev^{commit} # timeout=10
    Checking out Revision 031065c8c92c48902be1a4418dc7a8c03fbbb46f (refs/remotes/origin/dev)
     > git config core.sparsecheckout # timeout=10
     > git checkout -f 031065c8c92c48902be1a4418dc7a8c03fbbb46f # timeout=10
    Commit message: "modified html title"
     > git rev-list --no-walk 55a8d83887376de4f223dde04fb357872ebc8e2a # timeout=10
    [React App using Docker] $ /bin/sh -xe /tmp/jenkins15056033052381056354.sh
    + sudo chown jenkins /opt/devops-build/build/versions.txt
    + sudo chgrp jenkins /opt/devops-build/build/versions.txt
    + /opt/devops-build/build/build.sh
    
    Building the latest Docker Image...
    
     Container frontend  Killing
     Container frontend  Killed
    
    #0 building with "default" instance using docker driver
    
    #1 [frontend internal] load build definition from Dockerfile
    #1 transferring dockerfile: 130B done
    #1 DONE 0.0s
    
    #2 [frontend internal] load metadata for docker.io/library/nginx:latest
    #2 ...
    
    #3 [frontend auth] library/nginx:pull token for registry-1.docker.io
    #3 DONE 0.0s
    
    #2 [frontend internal] load metadata for docker.io/library/nginx:latest
    #2 DONE 1.4s
    
    #4 [frontend internal] load .dockerignore
    #4 transferring context: 104B done
    #4 DONE 0.0s
    
    #5 [frontend internal] load build context
    #5 transferring context: 4.31kB done
    #5 DONE 0.0s
    
    #6 [frontend 1/2] FROM docker.io/library/nginx:latest@sha256:28402db69fec7c17e179ea87882667f1e054391138f77ffaf0c3eb388efc3ffb
    #6 CACHED
    
    #7 [frontend 2/2] COPY . /usr/share/nginx/html
    #7 DONE 0.0s
    
    #8 [frontend] exporting to image
    #8 exporting layers 0.0s done
    #8 writing image sha256:eadbac41d643cd7b3478a5a00eef4232e0fe4bf18a319a736c48bb3234e27e61 done
    #8 naming to docker.io/library/build-frontend done
    #8 DONE 0.0s
    
    #9 [frontend] resolving provenance for metadata file
    #9 DONE 0.0s
    
    
    Pushing the image to Docker Hub...
    
    WARNING! Using --password via the CLI is insecure. Use --password-stdin.
    WARNING! Your password will be stored unencrypted in /var/lib/jenkins/.docker/config.json.
    Configure a credential helper to remove this warning. See
    https://docs.docker.com/engine/reference/commandline/login/#credentials-store
    
    Login Succeeded
    
    The push refers to repository [docker.io/pravinrajmarimuthu/my-react-app-dev]
    84e046604423: Preparing
    e4e9e9ad93c2: Preparing
    6ac729401225: Preparing
    8ce189049cb5: Preparing
    296af1bd2844: Preparing
    63d7ce983cd5: Preparing
    b33db0c3c3a8: Preparing
    98b5f35ea9d3: Preparing
    63d7ce983cd5: Waiting
    b33db0c3c3a8: Waiting
    98b5f35ea9d3: Waiting
    e4e9e9ad93c2: Layer already exists
    296af1bd2844: Layer already exists
    6ac729401225: Layer already exists
    8ce189049cb5: Layer already exists
    63d7ce983cd5: Layer already exists
    b33db0c3c3a8: Layer already exists
    98b5f35ea9d3: Layer already exists
    84e046604423: Pushed
    20241028103844: digest: sha256:ab136cb81a356fe383b088034478d6d7e1351ea1025ef2bd92d521fabf414d85 size: 1988
    
    The latest Docker image version is 20241028103844
    
    The docker image has been successfully built and pushed...!
    + /opt/devops-build/build/deploy.sh
    
    Authenticating with existing credentials...
    WARNING! Your password will be stored unencrypted in /var/lib/jenkins/.docker/config.json.
    Configure a credential helper to remove this warning. See
    https://docs.docker.com/engine/reference/commandline/login/#credentials-store
    
    Login Succeeded
    
    Error response from daemon: manifest for pravinrajmarimuthu/my-react-app-prod:20241028103844 not found: manifest unknown: manifest unknown
    
    The pulled docker image version is 20241028103844
    
     Container frontend  Recreate
     Container frontend  Recreated
     Container frontend  Starting
     Container frontend  Started
    
    CONTAINER ID   IMAGE            COMMAND                  CREATED                  STATUS                  PORTS                               NAMES
    2433a1211100   build-frontend   "/docker-entrypoint.…"   Less than a second ago   Up Less than a second   0.0.0.0:80->80/tcp, :::80->80/tcp   frontend
    Finished: SUCCESS

**Post completion of the job, Docker image is built with a dynamic tag and pushed to dev repo in Dockerhub**

  ![image](https://github.com/user-attachments/assets/b1c0cbd1-8c6d-4a71-a268-7f20d78d7ded)

**Merging the commits from dev to prod**

  ![image](https://github.com/user-attachments/assets/3815fc30-4227-4b78-9f40-d99448441853)

**The merge and push event in github repo triggers a Github Actions which pushes the latest image from dev to prod repo in Dockerhub and deploys the image**

  ![image](https://github.com/user-attachments/assets/eab22a46-fa94-462a-859e-f0e46f282f18)
  ![image](https://github.com/user-attachments/assets/6bbed585-ef64-4a11-bc4d-7f4d6877dae3)

**The react application is now accessible with the update changes**

  ![image](https://github.com/user-attachments/assets/2ec69e7a-b4af-4ecb-a96b-37db8dc4cdeb)
  ![image](https://github.com/user-attachments/assets/f161eeac-474f-4833-a8d6-51b1525afc5c)

**If site become unavailable, prometheus scrapes the data using Blackbox probing. Based on an alert rule in Grafana, notification is sent to configured contacts.**

  ![image](https://github.com/user-attachments/assets/50b67536-1548-46ce-ab4c-e4543684df33)
  ![image](https://github.com/user-attachments/assets/9a59e5e3-a037-41ec-a9a9-b0038cc02625)
  ![image](https://github.com/user-attachments/assets/27d8d7d2-f92b-493b-8012-3587c123e2da)
  ![image](https://github.com/user-attachments/assets/53630d05-1ffd-48cd-81dc-cbf75935d9bd)
