# Project Description

  1. Setup dev and prod branches in Github Repositories.
  2. Setup dev and prod repositories in Dockerhub.
  3. If dev branch in Github receives a new push event, a Jenkins job will build and push the docker image to dev repo in Dockerhub with a dynamic tag.
  4. If dev is merged to a prod, Github Actions will pull the latest image from dev repo and push it to prod repo in Dockerhub.
  5. Deploy the latest image from prod repo to an EC2 instance.
  6. Monitor the web application availability using Prometheus and Grafana.

# Version control using Github

**Github Branches**

![image](https://github.com/user-attachments/assets/68017333-0295-41ca-9afd-e2d5a67bf45c)


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

![image](https://github.com/user-attachments/assets/0c1352d4-9663-4312-9ecb-9e227542e22c)

# Monitoring the application using Prometheus and Grafana

**Prometheus**

Configuration file - [prometheus.yaml]()

![image](https://github.com/user-attachments/assets/9624aa5e-63cd-4094-ad08-5470512972d0)

**Grafana**

Configuration file - [grafana.ini]()

Data source 

![image](https://github.com/user-attachments/assets/f4bbdb67-2908-4b6c-91c6-75c8c325da7d)

Contact point

![image](https://github.com/user-attachments/assets/66b1a7ad-90a4-40f5-aef6-edc375d31de4)

Alert rules 

![image](https://github.com/user-attachments/assets/58676a66-fe25-4ee5-8cc9-e8989836821a)

Notification policies

![image](https://github.com/user-attachments/assets/f9833ecc-c49a-414e-bd26-e9df744b6339)
