# Lesson 11 & 12 — SDN, NFV and OpenStack

## What I learned
- SDN = Software Defined Networking
  separates Control Plane from Data Plane
- NFV = Network Function Virtualization
  separates Software from Hardware
- OpenStack = Free open source private cloud
  it is the VIM in NFV architecture
- KVM = Hypervisor that creates VMs
  using real CPU hardware (Intel VT-x)

## My Setup
- Machine: Intel iMac
- OS: Ubuntu 24.04
- CPU: 4 cores (KVM hardware virtualization supported!)
- RAM: 31GB
- Disk: 295GB free

## What I built
- Installed Microstack (mini OpenStack)
- Built my own private cloud on my machine
- KVM hardware virtualization confirmed!
- Opened Horizon Dashboard successfully!
- Better setup than AWS VM!

## Commands I used

### Install Microstack
sudo snap install microstack --edge --classic

### Initialize OpenStack
sudo microstack init --auto --control

### Get admin password
sudo snap get microstack config.credentials.keystone-password

### Get IP address
hostname -I

### Open Horizon Dashboard
https://192.168.178.74
Username: admin
Password: (from command above)

## OpenStack Services Running
| Service   | Job                    | AWS Equal  |
|-----------|------------------------|------------|
| Horizon   | Dashboard              | Console    |
| Keystone  | Security and users     | IAM        |
| Nova      | Creates VMs            | EC2        |
| Neutron   | Networking             | VPC        |
| Cinder    | Block storage          | EBS        |
| Glance    | OS images              | AMI        |
| Swift     | Object storage         | S3         |

## NFV Architecture on my machine
- MY iMac = COTS Server (Dell/HP equivalent)
- KVM = Hypervisor
- Microstack = OpenStack = VIM
- Horizon Dashboard = My private cloud console
- Ready to create VMs (vAMF, vSMF, vUPF)!

## Screenshots
(See screenshots folder)

## Key Learnings
1. KVM comes with Ubuntu kernel - NOT from Microstack!
2. Microstack USES KVM - does NOT create it!
3. Intel CPU has VT-x feature built in chip
4. Apple M1/M2/M4 cannot run Microstack - no Intel VT-x!
5. My iMac setup is better than AWS VM for this lab!
6. OpenStack is the VIM that manages hardware resources
7. SDN + NFV + OpenStack together = 5G Cloud!
