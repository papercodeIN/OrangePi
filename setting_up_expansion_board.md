---

# Orange Pi Zero 3 Integration with Expansion Board  

This guide provides instructions for integrating the Orange Pi Zero 3 with its expansion board and managing disk partitions using standard Linux commands.


### **1. List All Recognized Partitions**  
To display all partitions detected by the kernel:  

```bash
cat /proc/partitions | grep "sd*"
```
This command filters the partition list to show only devices with "sd" in their names.



### **2. Mount a Disk Partition**
To mount the first partition of the first disk (e.g., `/dev/sda`) to the `/mnt/` directory:  

```bash
sudo mount /dev/sda /mnt/
```
This is essential for accessing the contents of an external drive connected to the expansion board.



### **3. Display Disk Usage for Mounted File Systems**
To display disk space usage in human-readable format for all mounted file systems and filter for "sd" devices:  

```bash
df -h | grep "sd"
```

Alternatively, to view disk usage for all mounted file systems:  

```bash
df -h
```


### **4. View Contents of the Mounted Partition**
After mounting a partition, list its contents using:  

```bash
ls /mnt/
```
This will show files and directories from the mounted partition.


### **Note:**  
Ensure that the disk is safely ejected when finished by unmounting it:  

```bash
sudo umount /mnt/
``` 

This integration setup with the expansion board allows for seamless disk management and file operations on the Orange Pi Zero 3 platform.

---
