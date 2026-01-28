# Linux Fundamentals Project: LVM with ACL

## Project Overview
This project demonstrates the implementation of Logical Volume Management (LVM) with dynamic disk expansion and Access Control List (ACL) configuration in a Linux environment. It simulates a real-world system administration scenario where storage is allocated, expanded, and secured without downtime.

The project was completed during a 2-month Linux Fundamentals course as part of the academic curriculum.

## Objectives
- Create and manage physical volumes, volume groups, and logical volumes
- Combine multiple disks into a single logical storage pool
- Perform online logical volume expansion
- Configure persistent mounts using `/etc/fstab`
- Implement fine-grained user access control using ACLs

## Technologies Used
- Ubuntu Linux (VirtualBox)
- LVM2 (pvcreate, vgcreate, lvcreate)
- ext4 filesystem
- Access Control Lists (ACL)
- Bash Shell

## Implementation Summary
- Disk identification and verification using `lsblk`
- Physical Volume creation and Volume Group configuration
- Logical Volume creation and formatting
- Mounting and persistence configuration
- ACL-based permission enforcement
- Logical volume expansion and verification

## Outcome
The project resulted in a scalable, persistent, and secure storage setup, reflecting enterprise-level Linux storage management practices.

## Author
Priyanshu_12311900  
B.Tech Computer Science Engineering

## License
For educational use only.
