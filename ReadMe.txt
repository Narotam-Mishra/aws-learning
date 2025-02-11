
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

