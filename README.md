## Problem:
1. Create an EC2 instance t4g.small and one RDS instance t4g.micro.
2. The RDS instance should not be publicly accessible and should only be exposed to the EC2 instance.
3. The script should also perform deployment and take the latest image of WordPress from Docker.
4. The WordPress application should be exposed on port 80.
5. Create an Elastic IP and attach it to the EC2 instance.
6. The Terraform script should be uploaded to a public GitHub repository.
7. The repository's README file should be updated with all the necessary instructions to run the script, including the requirements, deployment steps, and any other relevant details.

## Requirements
1. install terraform and aws-cli on your machine.
2. generate secret key and access key from your AWS console.
3. run the following command in your terminal
    ``` aws configure ```
4. enter the aws access key and secret key.
5. enter the region
    ``` ap-south-1 ```

## Execution
### 1. generate key :
``` ssh-keygen -t ed25519 # use serverkey as filename ```
### 2. run
``` terraform init ```

### 3. run 
``` terraform apply --auto-approve```
    this will validate and run the terraform script.
    
## wordpress will be availble at the ouput ip 

## want to connect to the machine?
``` ssh -i  ~/.ssh/serverkey ubuntu@<output ip> ```
