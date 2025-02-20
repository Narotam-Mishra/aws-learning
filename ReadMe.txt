
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

## Elastic Load Balancer Points (3:15:47)


