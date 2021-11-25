# Born2beroot

# Why Debian?
- As Debian is the oldest version, it has a much mature community.
- Debian's tested version is as stable as other distributions, and even Debian's stable distribution is rock-solid stable.
- Debian offers the largest repository for the software as compared to any other distribution.
- The Debian package will notify you to install another package if required for working; it is up to you to install it.
- The installation is minimal, thus making it easier for server resources and their security.

## What is virtualization?
Virtualization is technology that lets you create useful IT services using resources that are traditionally bound to hardware. It allows you to use a physical machine’s full capacity by distributing its capabilities among many users or environments.

In more practical terms, imagine you have 3 physical servers with individual dedicated purposes. One is a mail server, another is a web server, and the last one runs internal legacy applications. Each server is being used at about 30% capacity—just a fraction of their running potential. But since the legacy apps remain important to your internal operations, you have to keep them and the third server that hosts them, right?

![image](https://user-images.githubusercontent.com/48088579/143447133-3eed9f6f-5293-4859-bf4f-5b29d22b2e39.png)

Traditionally, yes. It was often easier and more reliable to run individual tasks on individual servers: 1 server, 1 operating system, 1 task. It wasn’t easy to give 1 server multiple brains. But with virtualization, you can split the mail server into 2 unique ones that can handle independent tasks so the legacy apps can be migrated. It’s the same hardware, you’re just using more of it more efficiently.

![image](https://user-images.githubusercontent.com/48088579/143447160-380d664e-6246-42db-a0a3-4c447b633589.png)

Keeping security in mind, you could split the first server again so it could handle another task—increasing its use from 30%, to 60%, to 90%. Once you do that, the now empty servers could be reused for other tasks or retired altogether to reduce cooling and maintenance costs.


## How does virtualization work?
Software called hypervisors separate the physical resources from the virtual environments—the things that need those resources. Hypervisors can sit on top of an operating system (like on a laptop) or be installed directly onto hardware (like a server), which is how most enterprises virtualize. Hypervisors take your physical resources and divide them up so that virtual environments can use them.

Source: https://www.redhat.com/en/topics/virtualization/what-is-virtualization

## What is LVM?

Benefits
You can think of LVM as "dynamic partitions", meaning that you can create/resize/delete LVM "partitions" (they're called "Logical Volumes" in LVM-speak) from the command line while your Linux system is running: no need to reboot the system to make the kernel aware of the newly-created or resized partitions.

Other nice features that LVM "Logical Volumes" provide are:

- If you have more than one hard-disk, Logical Volumes can extend over more than one disk: i.e., they are not limited by the size of one single disk, rather by the total aggregate size.

- You can set up "striped" LVs, so that I/O can be distributed to all disks hosting the LV in parallel. (Similar to RAID-0, but a bit easier to set-up.)

- You can create a (read-only) snapshot of any LV. You can revert the original LV to the snapshot at a later time, or delete the snapshot if you no longer need it. This is handy for server backups for instance (you cannot stop all your applications from writing, so you create a snapshot and backup the snapshot LV), but can also be used to provide a "safety net" before a critical system upgrade (clone the root partition, upgrade, revert if something went wrong).

Source: https://askubuntu.com/questions/3596/what-is-lvm-and-what-is-it-used-for
