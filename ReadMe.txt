
# Slides - https://drive.google.com/drive/folders/1zuTNWyGelOiTALDZt7RF4E3uMHhcbIU7

# AWS Console - console.aws.amazon.com

# AWS Learning Notes

# Topic 1 - What is Virtualization? (07:03)

# Virtualization - Virtualization in Cloud Computing is a foundational technology that allows multiple virtual instances (virtual machines or containers) to run on a single physical hardware system. It abstracts the underlying hardware and creates multiple simulated environments that behave as if they are separate physical machines, providing the flexibility, scalability, and efficiency that cloud computing offers.

## Key Concepts of Virtualization

1. Hypervisor :-
- A hypervisor (also called a Virtual Machine Monitor or VMM) is software that enables virtualization.
- It sits between the hardware and the operating systems, allowing multiple virtual machines (VMs) to share the same physical resources.
- Types of hypervisors:
# Type 1 (Bare Metal): Runs directly on the hardware (e.g., VMware ESXi, Microsoft Hyper-V, Xen).
# Type 2 (Hosted): Runs on top of a host operating system (e.g., Oracle VirtualBox, VMware Workstation).

2. Virtual Machine (VM) :-
- A VM is a software-based simulation of a physical computer.
- Each VM runs its own operating system and applications, independent of others on the same physical hardware.
- Resources such as CPU, memory, and storage are allocated to VMs, and the hypervisor manages these allocations.

3. Resource Pooling :-
- Virtualization allows physical resources (CPU, memory, storage, network) to be pooled and distributed dynamically to VMs as needed.
- This ensures optimal utilization of hardware resources and minimizes wastage.

4. Isolation :-
- Each VM operates in isolation from others, meaning that issues in one VM do not affect others running on the same physical hardware.

5. Live Migration :-
- Virtualization enables VMs to be moved between physical servers without downtime. This capability is vital for load balancing, maintenance, and disaster recovery.

Q. How Virtualization Works in Cloud Computing?
1. Abstracting Physical Resources :- Virtualization decouples physical hardware from operating systems and applications by creating a virtual layer.
This abstraction allows multiple VMs to run on a single server.

2. Dynamic Allocation :- Resources are allocated dynamically to VMs based on demand, which is particularly useful in a cloud environment where workloads can be highly variable.

3. Elasticity and Scalability :- Virtualization supports cloud elasticity, enabling providers to scale resources up or down instantly.
For example, if a web application experiences a traffic spike, additional VMs can be spun up to handle the load.

4. Centralized Management :- Virtualization platforms often come with management tools that allow administrators to control, monitor, and configure VMs remotely.

## Topic 2 - What is Cloud Computing? (15:45)

# Cloud Computing - On-demand delivery of computing and IT resources over the Internet with pay-as-you-go pricing.

# Iaas - Infrastructure as a Service,
# Paas - Platform as a Service,
# Saas - Software as a Service,

# Different types of cloud
- Public Cloud - AWS, Azure & GCP
- Private Cloud - 
- Hybrid Cloud 

# What is AWS?  (28:21)

# AWS is one of cloud service provider by Amazon company. It offers a pay-as-you-go model, allowing us to pay for what you use, which is ideal for optimizing costs.

# AWS provides around 200 services.

Q. What makes AWS so special?
# Scalability, Global Reach, Realiability & Security

# Cloud Market Share Q2 2024
1). Amazon AWS - 32%,
2). Microsoft Azure - 23%,
3). GCP - 12%

# Poular Services by AWS :-
1). EC2 for scalable compute capacity,
2). S3 for hightly reliable storage,
3). RDS for managed databases,
4). Lambda for serverless computing,
5). CloudFront for content delivery.

# AWS IAM Service (43:43)

# AWS Identity & Access Management - used for user's management (roles and permission)

# IAM is a service that helps us securely control access to AWS resources. It allows us to manage users, roles and permission to define who can access what within our AWS environment.

# IAM is a Global level service.

# Tasks under IAM :-
1). Create Users,
2). Assign Permissions,
3). Create Groups

# AWS IAM Create User (49:43)

1). Create Roles,
2). Define Policies,
3). Manage Federated Access,

# AWS IAM MFA (1:00:30)

# Ways of accessing AWS :-
1). AWS Management Console,
2). AWS CLI,
3). AWS SDKs and APIs (we can automate repetative tasks)

# AWS CLI (set for Window) (1:08:59)

# AWS CLI Configure (1:10:41)

# command to configure AWS CLI :- `aws configure` and enter all necessary details like Access key, Secret Access Key etc,

# Command to list IAM Users :- `aws iam list-users`

# AWS IAM Best Practices (1:15:30)
- Avoid using root account except of account setup,
- Add user to a group and assign permission to group,
- Use Password policy or MFA,
- Use Access Keys for CLI/SDK,
- Never share ACCESS KEYS or Password,

## AWS EC2 Service (1:20:08)

# AWS EC2 Elastic Cloud Compute - AWS EC2 is a cloud service that provides resizable virtual servers, called instances, which we can use to run application.

# Key terms related to EC2 Service :-
# Instance Type :- Select the hardware capacity (e.g, CPU, Memory)

# Amazon Machine Image (AMI) :- Choose the operating System and software (linux, mac, window)

# Storage :- Configure the type and size of storage (e.g, EBS volume)

# Security Groups :- Set up firewall rules to control inbound/outbound traffic,

# Key Pair :- Create or use an existing key pair for SSH access.

# Network Settings :- Configure VPC, subnet, and assign public or private IP addresses.

# IAM Role :- Attach an IAM role for permission to access other AWS resources.

# User Data :- Add scripts to be executed when the instance starts,

# Elastic IP :- Optionally associate a static IP address for consistent public access.

## Creating First EC2 Instance (1:24:19)

# EC2 Service is a region specific service meaning whenever we create a new EC2 instance, it will be based on that region data center.

# Using Userdata (1:29:58)

# Userdata script to install and run Apache WebServer

`
#!/bin/bash
# Update the system package list
sudo yum update -y

# Install Apache web server (httpd)
sudo yum install -y httpd

# Start Apache service
sudo systemctl start httpd

# Enable Apache to start on boot
sudo systemctl enable httpd

# Optional: Create a simple HTML file to verify the web server is running
echo "<html><h1>Welcome to Apache Web Server on Amazon Linux!</h1></html>" >
/var/www/html/index.html
`

## Overview of Groups (1:34:05)

# Security Groups :- Network firewall rule that control inbound and outbound traffic for instances.

# Important points about security groups :-
==> Region specific,
==> Only 'Allow' rule (but no deny rule),
==> All inbound traffic blocked and outbound allowed by default.

## Accessing our EC2 Instance (1:43:18)

Q. How to SSH into EC2 instance?
# SSH allows us to control/access a remote machine.

## SSH EC2 From Windows (1:45:37)

# EC2 Termination (1:50:08)

# EC2 Instance Type (1:54:01)

# Link - https://aws.amazon.com/ec2/instance-types/

# Case 1 : Small Website or Blog
==> Suitable Type:t3.micro or t3.small (General Purpose)

# Case 2 : E-Commerce Application 
==> Sitable Type:m5.large or m5.xlarge (General Purpose)

# Case 3 : Real-Time Video Rendering and Streaming (Acclerated Computing)
==> Instance Type:g5.12xlarge or g5.24xlarge

# Case 4: In-Memory Database for Real-Time Analytics (Memory Optimized)
==> r6g.16xlarge or x2idn.32xlarge (Memory Optimized)

## AWS EBS Service (2:00:14)

# AWS EBS (Elastic Block Store) :- AWS EBS is a cloud-based storage service that provides durable, high-performance block storage for use with Amazon EC2 instances. It works like a virtual hard drive, allowing us to store and access data even when our EC2 instances are stopped or terminated.

# Usecase of AWS EBS :- Suppose we are hosting a MySQL or PostreSQL DB, we need reliable, high-performance storage to handle frequent read/write operations. EBS provides persistent, fast storage that ensures our data is saved even if the EC2 instance is stopped or restarted, making it ideal for database workloads.

# Key Points EBS (2:03:27)

- Region & AZ specific
- Build-in Redundancy :- EBS volumes are automatically replicated within the same Availability Zone to prevent data loss due to hardware failures.

- Different Volume Types :- gp2/3, io1/2, st1, sc1
- Allow Encryption & Snapshot for backup

# Termination on Delete (2:09:22)

# Create and Attach EBS (2:11:59)

# Task :- Create an EBS and attach it to the EC2 Instance

# Modify Size EBS Volume (2:15:12)

# Detach and Delete EBS (2:16:24)

# Snapshot of EBS (2:17:21)

# What if we want to copy our data to 
- New AZ
- New Region

# Command to check backup --> `df -h`

# Unmount EBS (2:28:10)

# EBS Snapshot Copy to Other Region (2:30:49)

# EBS Encryption (2:32:55)

# We can encrypt both the boot and data volumes of an EC2 instance. When we create an encrypted EBS volume and attach it to a supported instance type, the following types of data are encrypted :-
- Data at rest inside the volume
- All data moving between the volume and the instance
- All snapshots created from the volume

# More Info - https://docs.aws.amazon.com/ebs/latest/userguide/how-ebs-encryption-works.html

# EBS Lifecycle Manager (2:34:40)

# AWS AMI Service (2:39:57)

# AMI (Amazon Machine Image) :- An Amazon Machine Image is a pre-configured template that provides the necessary information to launch an EC2 instance in AWS. It includes :-
- Operating system (e.g, linux, Windows)
- Application server (e.g., Apache Nginx)
- Pre-installed software and configurations

# Types of AWS AMIs :-
1). Public AMIs :- Available to all AWS uers.
2). Private AMIs :- Created by a user and only available within that account or shared with specific accounts.
3). Paid AMIs / marketplace AMIs :- Provided by third parties through AWS Marketplace.

## Usecase of Paid AMIs :-
- Rapid Deployment
- Scalability and Load Balancing
- Cost Efficiency

# Create Launch Template Vs Create Image (2:51:08)

# Create Launch template create a reusable blueprint for launching instances whereas Create Image (AMI) create a custom AMI snapshot of an instance.

# EC2 Image Builder (2:55:07)

- Automate VM or Image Creation :- creation, testing and deployment of AMIs
- Can be configured to run at regular intervals (e.g., daily, weekly or monthly)

## AWS ELB & ASG Service (2:56:45)

# AWS ELB (Elastic Load Balancing) and ASG (Auto Scaling Groups)

# Scalability :- Scalability means the ability to grow our system's resources when our application or website gets more traffic or more users.

# Types of Scalability :- There are two types of Scalability :-
1). Vertical Scalability (Scaling Up) :- Vertical Scalability means adding more power (CPU, RAM) to our existing server. Example :- t2.micro to m5.large

2). Horizontal Scalability (Scaling Out) :- Horizontal Scalability means adding more instances (servers) to distribute the load. We can add more EC2 instances behind a load balancer.

# High Availability (HA) :- High Availability means keeping our service up and running with minimal downtime, so it's always accessible to users. Example :- running resources in multiple AZs.

# Elasticity :- Elasticity means the ability to automatically adjust resources as the demand changes, meaning adding more when needed and removing when it's no longer necessary. Example :- ASG (Auto Scaling Group) 

# There are three types of Load Balancer :-
1). Application Load Balancer (ALB) :- Choose an Application Load Balancer when you need a flexible feature set for your applications with HTTP and HTTPS traffic. Operating at the request level, Application Load Balancers provide advanced routing and visibility features targeted at application architectures.

2). Network Load Balancer (NLB) :- Choose a Network Load Balancer when you need ultra-high performance, TLS offloading at scale, centralized certificate deployment, support for UDP, and static IP addresses for your applications.

3). Gateway Load balancer (GLB) :- Choose a Gateway Load Balancer when you need to deploy and manage a fleet of third-party virtual appliances. These appliances enable you to improve security, compliance, and policy controls.

## Elastic Load Balancer Important Points (3:15:47)
- Distribute Traffic :- It splits incoming traffic across multiple servers so no single server gets overloaded.

- Improves Availability :- If one server goes down, the load balancer automatically sends traffic to the working servers, ensuring our application stays available.

- Scale Resources :- It helps manage high demand by adding more servers during peak times and distributing the load.

- Single point of Access need to be exposed.
- HA across AZs.

# Setps for creating AWS ELB :-
1). Setup EC2 Instances :- Setup atleast 2 EC2 instances,
2). Configure Security Groups,
3). Create the Load Balancer,
4). Register Targets,
5). Test the Load Balancer,

# Auto Scaling Group (ASG) (3:19:24)

# Using Load Balancer and doing all setup are done manually.

# AWS ASG (Auto Scaling Group) is a service that automatically adds or removes EC2 instances based on demand to ensure our application is always available. It helps scale up when more capacity is needed and scale down during low usage to save costs, keeping the right number of servers running at all times.

# Main functions of ASG :-
1). Automatic Scaling,
2). Maintain Instance Health,
3). Use Scaling Policies,
4). Ensure Availability
5). Schedule Scaling,
6). Distribute Instances,
7). Integrate with ELB,
8). Optimize Costs

# Steps to create ASG :-
1). Launch Template or Configuration,
2). Create Auto Scaling Group,
3). Select VPC and Subnets,
4). Attach Load Balancer (optional)
5). Configure Scaling Policies,
6). Health Checks,
7). Add Notifications (optional)
8). Review and Create

## AWS S3 Bucket (3:38:15)

# AWS S3 (Simple Storage Server) :- Amazon S3 is an object storage service that offers industry-leading scalability, data availability, security, and performance. It is a region specific service.

# AWS S3 is a cloud-based storage service that allows us to store, manage, and retrieve large amounts of data like files images, videos and backups securely and at scale. It provides higly reliable, scalable object storage, making our data accessible from anywhere, anytime, via the internet.
- stores data as objects,
- globally unique name,
- region specific,
- each object within a bucket is stored as key-value pair.

# Maximum Object size :- 5 TB is the maximum size for a single object in Amazon S3

# Host Static Website (3:47:46)

# S3 Bucket Policies :- It is a JSON-based access control policies that we attach directly to an S3 bucket to manage permissions for accessing the bucket and its objects. It allow us to define who can access the data and what actions they can perform, such as read, write or delete, enabling fine-grained control over the security of our data stored in S3.

## S3 Versioning (3:58:06)

# It allows us to keep multiple versions of an object in the same bucket, providing protection against accidental deletions or overwrites.

## S3 Replication (4:02:42)

# It allows us to automatically copy objects from one S3 bucket to another, which can be
- within the same region (Same-Region Replication - SRR)
- in different regions (Cross-Region Replication - CRR)

## S3 Storage Classes (4:09:39)
1). S3 Standard :- frequently accessed data,
2). S3 Intelligent-Tiering :- Data with unknown or unpredictable access patterns,
3). S3 Standard-IA :- Infrequently accessed but quickly retrievable,
4). S3 One Zone-IA :- Non-critical, infrequently accessed data,
5). S3 Glacier :- Archival data, rarely accessed,
6). S3 Glacier Deep archive :- Deep archival data, almost never accessed,
7). S3 Outposts :- Local storage using AWS Outposts,

## S3 Bucket Lifecycle (4:14:56)

# We can use lifecycle policies to control the movement of objects between different storage classes or delete them entirely, based on specific conditions like age or inactivity.

## S3 Snow Family (4:18:28)

# The S3 Snow Family is a group of physical devices offered by AWS to help move large amounts of data to the cloud when using the internet isn't practical.. These devices are used when there's too much data to upload over a regular connection or when dealing with remote areas without good internet.

## Amazon S3 Storage gateway (4:21:01)

# It is a hybrid cloud storage service that connects on-premises environments to cloud storage in Amazon S3. It helps extend our local storage to the cloud by acting as a bridge.

## AWS RDS Service (4:25:05)

# AWS Relational Database Service :- AWS RDS as a managed database service that simplifies setup, operation, and scaling. Its purpose is to handle administrative tasks like backups, patching, monitoring and scaling.

# Pratical Usecase - Deploy Nodejs & MySql based Backend app using Docker to AWS RDS,

# Command to install Docker in AWS :- `sudo yum install docker -y`

# Command to start docker :- `sudo systemctl start docker`

# Command to check status of docker :- `sudo systemctl status docker`

# Command to pull image :- `sudo docker pull philippaul/node-mysql-app:02`

# Command to run Docker Container :- sudo docker run --rm -p 80:3000 -e DB_HOST="database-1.c0vqw8euiupa.us-east-1.rds.amazonaws.com" -e DB_USER="admin" -e DB_PASSWORD="Naru_aws99" -d philippaul/node-mysql-app:02

# Command - `sudo docker ps`

# Command to check Docker logs :- `sudo docker logs -f condescending_lumiere`

# Command to access MySql DB using docker :- `sudo docker run -it --rm mysql:8.0 mysql -h database-1.c0vqw8euiupa.us-east-1.rds.amazonaws.com -u admin -p`

## Benefits of using RDS :-
- High availability and fault tolerance,
- Vertical and Horizontal Scaling,
- Automated backups and recovery,
- Cost Effectiveness,

## AWS DynamoDB Service (4:55:53)

# AWS DynamoDB is a fast and flexible NoSQL database service for any scale.

# DynamoDB is a fully managed, key-value, and document database that delivers single-digit-millisecond performance at any scale.

# NoSQL :- NoSQL is a type of database designed to store and manage data in flexible, non-tablular formats, making it ideal for handling large volumes of unstructured data.

# Serverless :- No need for server provisioning, software installation, maintenance, or patching.

# Practical Exercise :- Deploy Docker based Node App with Dynamodb

# EC2 (Docker Node-App) ----------------> DynamoDB (AWS)

# DynamoDB Task :- Create table `Contacts` with primary key as `id` (Type String)

# EC2 Instance 
- sudo yum install -y docker
- sudo service docker start
- sudo username -aG docker ec2-user
- sudo docker pull philippaul/node-dynamodb-demo

# IAM Access Keys
- Create Access and Security Keys for our app to connect with DynamoDB

# Command to run Docker Container :- sudo docker run --rm -p 80:3000 --name node-dynamo-app -e AWS_REGION="" -e AWS_ACCESS_KEY_ID= -e AWS_SECRET_ACCESS_KEY="" philippaul/node-dynamodb-demo

## DynamoDB Acclelerator - DAX :- It is a fully managed in-memeory cache for DynamoDb.

## AWS Lambda Function (5:24:01)

# AWS Lambda lets us run code without thinking about servers. Using AWS Lambda we can run code for virtually any type of applications or backend service, all with zero administration.

# AWS Lambda is a serverless computing service that lets us run code in response to events without managing servers.

# We just upload our code and AWS automatically handles the rest, scaling as needed and only charging for the time when our code runs.

# Event Driven Execution (5:30:19)

# Lambda is an event-driven service, meaning that it runs our code in response to certain triggers or events.

# These events can come from many different AWS services like :-
- S3 (file upload),
- DynamoDB (database changes),
- API Gateway (HTTP requests),
- CloudWatch (scheduld events) etc,

# AWS Lambda Limitations :-
- Execution Time Limit,
- Stateless,
- Cold Start Delays

# When to use AWS Lambda :-
- Image Processing,
- Data Transformation,
- Real-Time Notifications

# Features of Lambda :-
- Automatic Scaling,
- Pay-as-You-Go,

## AWS CloudFormation (5:46:25)

# AWS CloudFormation is an Infrastructure as Code (IaC) service that lets us define, provision and manage AWS resources in a declarative, template-based format.

# Advantages of using AWS CloudFormation :-
- Consistency : Define infrastructure in code
- Automation : Reduce manual work
- Repeatable : Replicate environments

# Infrastructure as Code (IaC) Tool :- Automates the creation, management, and updating of AWS infrastructure.

# AWS Native :- Exclusively supports AWS resources, fully integrated with AWS services.

# CLI Command to create stack - aws cloudformation create-stack --stack-name MyStackName --template-body file://path/to/template.yml

# More Info on AWS CloudFormation - https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html

## AWS Route53 Service (6:08:07)

# AWS Route53 is a scalable DNS service for domain registration, traffic routing and health checking capabalities.

# We can create custom domain using AWS Route53 service.

# DNS, or Domain Name System, is the internet service that translates human-friendly domain names like `www.example.com` into machine-readable IP addresses.

# Default port for DNS service is: 53

## Route 53: Practical Setup (6:09:41) 

# We can serve our website globally with low latency.

# Different types of Routing policy :-
- Weighted,
- Geolocation,
- Latency,
- Failover,
- Maultivalue answer,
- Geoproximity,

## Route 53 : How it Works (6:27:00)

Q. How does Route53 work?
- Domain Name Registration,
- Hosted Zone Creation,
- DNS Records add,
- Routing Policies setup,
- Health Checks configuration

# Types Records supported by AWS Route53 (6:29:19)
- A Record (IPv4)
- AAAA Record (IPv6)
- CNAME Record
- MX Record
- TXT Record,
- NS Record,
- SRV Record,

# Route53 Usecases (6:30:59)
- Hosting Websites,
- Load Balancing,
- Disaster Recovery,
- Multi-Region Deployments

# Services offered by Route53 :-
- Domain names,
- Hosted zones,
- Health checks,
- Traffic flow,
- Resolver,

## AWS CloudFront CDN (6:36:44)

# Requirement :- We want to serve our website globally with low latency,

# AWS CloudFront :- It is a Content Delivery Network (CDN) that speeds up the delivery of web content to users by caching it at servers (edge locations) close to them, improving load times and performance globally.

# AWS CloudFront primarily caches static content like images, CSS, JavaScript, and videos. It can also cache dynamic content (e.g, HTML or API responses) if configured with caching policies and headers.

# By default, sensitive or user-specific data and backend logic are not cached. Cache behaviour is controlled via TTLs, cache behaviour, and origin headers.

# Browsers act like a mini-CDN by caching website files (like images, CSS, and JavaScript) locally on a user's device, which speeds up loading for repeat visits.

# More Info :- https://aws.amazon.com/cloudfront/?nc=sn&loc=1

# More about AWS CloudFront :- https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html

## AWS Virtual Private Cloud (VPC) (6:54:01)

# Virtual Private Cloud (VPC) :- A private, isolated network within AWS cloud where we can launch and manage our resources securely.

Q. Why we need VPC ?
# To securely isolate and control network environments.

# Subnets :- A subnet is a smaller, segmented part of larger network that isolates and organizes devices within a specific IP address range.

# Route Table :- A route table is a set of rules, called routes, that are used to determine where network traffic from our subnets or gateway is directed. Each subnet in our VPC must be associated with a route table, which controls the routing for that subnet.

# Internet Gateway :- An Internet Gateway is a component that allows communication between instances in our VPC and the internet.

# Network ACLs (Access Control Lists) :- It is a optional layer of security for our VPC that acts as a firewall for controlling traffic in and out of one or more subnets. 

# Network Address Translation (NAT) :- It enables instances in a private subnet to connect to the internet or other AWS services, but prevents the internet from initiating connections to those instances.

# VPC Peering :- A networking connection between two VPCs that enables us to route traffic between them privately.

# Bastion Host :- A special-purpose instance that provides secure access to our instances in private subnets.

# Elastic IP Addresses :- Static IP addresses designed for dynamic cloud computing.

# Direct Connect :- It establishes a dedicated network connection from your premises to AWS.

# More Info on AWS VPC :- https://docs.aws.amazon.com/vpc/ 

## AWS VPC Manual Creation (7:27:17)

## AWS Billing and Organization (7:39:25)

# AWS Organizations enables you to centrally manage and consolidate all of your AWS accounts in the AWS Cloud.

# More About AWS Organisation :- https://aws.amazon.com/organizations/getting-started/

## AWS Amplify (7:47:19)

# Amplify is a platform that simplifies 
- Building,
- Deploying and,
- Hosting full-stack web and mobile apps.

# Deploy Static Website (7:49:06)

# CI/CD Automated Build & Deployment

# Configure Custom Domain (7:53:52)

# AWS Amplify Key Points :-
- Connects to backend services like user login, data storage and APIs.
- Offers hosting and automatic updates for web apps.

# React Todo App Deployment (8:01:40)

# Setup Local Env (8:07:01)

# Local AWS Credentials (8:19:21)

# Making Backend updates (8:20:32)

# Resource cleanup

# AWS Amplify Docs - https://docs.amplify.aws/react/start/quickstart/

# More about AWS Amplify :- https://docs.amplify.aws/

## AWS ECS (8:30:58)

# Elastic Container Service (ECS) :- It is a cloud based container management service that allows us to run and manage Docker container on a cluster of virtual servers.

Q. Why to use ECS ??
# It automatically handles
- Creation,
- Management,
- Updating,

# ECS Terms :-

- Cluster :- Group of Tasks and Services, hosts all the resources and infrastructure.

- Service :- Handles Scalability and Load balancing of container.

- Task :- Represents the running container of our application.

Deployment Confuure

# More about AWS ECS :- https://docs.aws.amazon.com/ecs/

## AWS EKS (8:48:28)

# Elastic Kubernetes Service (Amazon EKS) is a fully managed kubernetes cluster infrastructure.

Q. What is Kubernetes ?
# An open source platform for automating the deployment, scaling and management of containerized applications.

# When we deploy Kubernetes, we get a cluster. Two important parts are :
- Master (Control Plane) &
- Worker nodes

# More on AWS EKS :- https://docs.aws.amazon.com/eks/

## Practical 

# To create EKS Cluster in AutoMode 
- `eksctl create cluster --name=<cluster-name> --enable-auto-mode`

# We can also provide 
--nodes=3
--nodes-min=2, --nodes-max=5
--region us-west-2
--node-type t3.medium
--managed/fargate

## Bonus Section : Good to learn (9:16:05)

Q. What is Terraform (9:16: 07)
# Terraform is an open-source infrastructure as code (IaC) tool.

Q. What is IaC?
# It enables us to define, provision and manage infrastructure across multiple cloud providers using a declarative configuration language. It supports multi-cloud environments, allowing consistent and efficient infrastructure management.

# Terraform Config
- It uses `.tf` extension
- Format is HCL (Hashicorp Config Language)
- Declarative Language

# Terraform supports JSON format also.

# Terraform commands
- terraform init
- terraform plan
- terraform apply/destroy

# Advantages of using IaC tool :-
- Consitency :- define infrastructure in code,
- Automation :- Reduce manual work,
- Repeatable :- Replicate environments easily

# Terraform Modules :- Modules are containers for multiple resources that are used together. A module consists of a collection of `.tf` and/or `.tf.json` files kept together in a directory. Modules are the main way to package and reuse resource configurations with Terraform.

# Workspaces :- Workspace-dev, Workspace-test, Workspace-prod

# Terraform Cloud is a managed service provided by HashiCorp that facilitates collaboration on Terraform configurations.

# Features of Terraform Cloud :-
- remote state management,
- version control system (VCS) integration,
- automated runs, and
- secure variable management