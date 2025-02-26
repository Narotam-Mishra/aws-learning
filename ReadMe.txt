
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

# 