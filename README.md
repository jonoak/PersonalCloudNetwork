
# Personal Cloud Network Setup

## Overview
This project sets up a personal cloud network using VMware vSphere, integrated with Google Cloud and AWS. It includes automated configuration management using Ansible and implements dynamic resource allocation across multiple virtual machines (VMs).

![screenshot](/screenshot.png)

## Technologies Used
- **Virtualization**: VMware vSphere
- **Cloud Services**: Google Cloud, AWS
- **Automation**: Ansible
- **Scripting**: Terraform, Bash

## Prerequisites
- **VMware vSphere** installed and configured.
- **Google Cloud** and **AWS** accounts with access keys.
- **Ansible** installed on your local machine.
- **Terraform** installed on your local machine.

## Setup Instructions

### Step 1: Clone the Repository
```bash
git clone <repository_url>
cd personal-cloud-network
```

### Step 2: Configure VMware vSphere
Run the following script to configure VMware vSphere, create VMs, and set up networking.

```bash
bash vsphere-setup.sh
```

### Step 3: Provision Cloud Resources
Use Terraform to provision resources on Google Cloud and AWS.

```bash
terraform init
terraform apply
```

### Step 4: Automate Configuration Management
Run the Ansible playbook to configure the VMs.

```bash
ansible-playbook ansible-playbook.yml
```

### Step 5: Implement Automated Backups
Set up automated backups by running the following script.

```bash
bash backup-script.sh
```

## Challenges and Solutions
### Challenge: Managing Resource Allocation Efficiently
**Solution**: Implemented dynamic resource allocation and monitoring tools to optimize performance across multiple VMs.

## Conclusion
This setup optimizes performance and security in a personal cloud network by integrating multiple cloud services with VMware vSphere and automating processes using Ansible.
