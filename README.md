# Born2beroot

# Why Debian?
- As Debian is the oldest version, it has a much mature community.
- Debian's tested version is as stable as other distributions, and even Debian's stable distribution is rock-solid stable.
- Debian offers the largest repository for the software as compared to any other distribution.
- The Debian package will notify you to install another package if required for working; it is up to you to install it.
- The installation is minimal, thus making it easier for server resources and their security.

# Why Centos?
- It comes with many security in-built features that help protect from cyber-attacks using SELinux. It helps to reduce the vulnerabilities of privilege escalation attacks.
- It can support multiple management platforms like cPanel, WebMin, Docker, etc.
- CentOS comes with a great and simple document that allows you to install and configure CentOS on your system efficiently.

## What is virtualization?
Virtualization is technology that lets you create useful IT services using resources that are traditionally bound to hardware. It allows you to use a physical machine’s full capacity by distributing its capabilities among many users or environments.

In more practical terms, imagine you have 3 physical servers with individual dedicated purposes. One is a mail server, another is a web server, and the last one runs internal legacy applications. Each server is being used at about 30% capacity—just a fraction of their running potential. But since the legacy apps remain important to your internal operations, you have to keep them and the third server that hosts them, right?

![image](https://user-images.githubusercontent.com/48088579/143447133-3eed9f6f-5293-4859-bf4f-5b29d22b2e39.png)

Traditionally, yes. It was often easier and more reliable to run individual tasks on individual servers: 1 server, 1 operating system, 1 task. It wasn’t easy to give 1 server multiple brains. But with virtualization, you can split the mail server into 2 unique ones that can handle independent tasks so the legacy apps can be migrated. It’s the same hardware, you’re just using more of it more efficiently.

![image](https://user-images.githubusercontent.com/48088579/143447160-380d664e-6246-42db-a0a3-4c447b633589.png)

Keeping security in mind, you could split the first server again so it could handle another task—increasing its use from 30%, to 60%, to 90%. Once you do that, the now empty servers could be reused for other tasks or retired altogether to reduce cooling and maintenance costs.

## Purpose of Virtual Machines
The main purpose of VMs is to operate multiple operating systems at the same time, from the same piece of hardware. Without virtualization, operating multiple systems — like Windows and Linux — would require two separate physical units.

## AppArmor
AppArmor proactively protects the operating system and applications from external or internal threats and even zero-day attacks by enforcing a specific rule set on a per application basis. Security policies completely define what system resources individual applications can access, and with what privileges. Access is denied by default if no profile says otherwise. A few default policies are included with AppArmor and using a combination of advanced static analysis and learning-based tools, AppArmor policies for even very complex applications can be deployed successfully in a matter of hours.

## Aptitude
Aptitude is front-end to advanced packaging tool which adds a user interface to the functionality, thus allowing a user to interactively search for a package and install or remove it. Initially created for Debain, Aptitude extends its functionality to RPM based distributions as well.

## Apt and Aptitude
- Apt-get being a lower level package manager is restricted only to command line, while Aptitude being a higher-level tool has a default text-only interactive interface along with option of command-line operation by entering required commands.
- While apt-get lacks UI, Aptitude has a text-only and interactive UI
- Aptitude has a better package management than apt-get

# SSH
SSH or Secure Shell is a network communication protocol that enables two computers to communicate (c.f http or hypertext transfer protocol, which is the protocol used to transfer hypertext such as web pages) and share data. An inherent feature of ssh is that the communication between the two computers is encrypted meaning that it is suitable for use on insecure networks.

SSH provides a layer of security for information transfer between machines. Some important use cases for SSH are:

- Remote access – SSH ensures encrypted remote connections for users and processes.
- File transfers – SFTP, a secure file transfer protocol managed by SSH, provides a safe way to manipulate files over a network.
- Tunneling – This encapsulation technique provides secure data transfers. Tunneling is useful for accessing business-sensitive online materials from unsecured networks, as it can act as a handy VPN alternative.
- Network management – The SSH protocol manages network infrastructure and other parts of the system.

## How does virtualization work?
Software called hypervisors separate the physical resources from the virtual environments—the things that need those resources. Hypervisors can sit on top of an operating system (like on a laptop) or be installed directly onto hardware (like a server), which is how most enterprises virtualize. Hypervisors take your physical resources and divide them up so that virtual environments can use them.

Source: https://www.redhat.com/en/topics/virtualization/what-is-virtualization

# UFW (Uncomplicated Firewall)
UFW (uncomplicated firewall) is a firewall configuration tool that runs on top of `iptables`. It provides a streamlined interface for configuring common firewall use cases via the command line.

More: https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands

## Why UFW?
ufw aims to provide an easy to use interface for people unfamiliar with firewall concepts, while at the same time simplifies complicated iptables commands to help an administrator who knows what he or she is doing. ufw is an upstream for other distributions and graphical frontends

# Cron
Cron is a standard Unix utility that is used to schedule commands for automatic execution at specific intervals. For instance, you might have a script that produces web 
statistics that you want to run once a day automatically at 5:00 AM.
Commands involving cron are referred to as "cron jobs."

More: https://devhints.io/cron, https://crontab.guru/

# Sudo
There are two ways to run administrative applications in Linux. You can either switch to the super user (root) with the su command, or you can take advantage of sudo. How you do this will depend upon which distribution you use. Some distributions enable the root user (such as Fedora, Red Hat, openSuSE), while some do not (such as Ubuntu and Debian). There are pros and cons for each.

Sudo stands for either “substitute user do” or “super user do” (depending upon how you want to look at it). What sudo does is incredibly important and crucial to many Linux distributions. Effectively, sudo allows a user to run a program as another user (most often the root user). There are many that think sudo is the best way to achieve “best practice security” on Linux. There are some, however, that feel quite the opposite.  Regardless of where you stand, and what distribution you are currently using, there will come a time when you will have to take advantage of sudo. Whether you will need to simply use sudo or you will have to configure sudo you will want to know the ins and outs of this powerful tool.

Watch:
[![alt](https://i.ytimg.com/vi/k5VI81ttmR0/maxresdefault.jpg)](https://www.youtube.com/watch?v=Q5qMY1elbyE)

# Password Policy, Why?
Implementing a strong password policy is so important because it protects against a range of attacks. Automated password-guessing bots have become sophisticated. If hackers have managed to find the email associated with a WordPress account, they could use this software to brute force their way into the account.

# Lighttpd
What is Lighttpd? Lighttpd, or Lighty, as it is affectionately called, is an extensible, modular, low-footprint, single-threaded, high performance, web server that will happily run on small servers, and outperform an Apache server or Microsoft IIS in most settings. Lighttpd powers many large sites, such as the YouTube video download servers and the image upload server of Wikipedia. At the time of this writing, Lighttpd has the fifth place in the netcraft web server top ten. The plugin architecture encourages developing custom modules and trying new ideas. The development community around Lighttpd is friendly, helpful and pragmatic, and the documentation, though a little scattered, is quite thorough, if you know where to look.

## What is WordPress?
WordPress is a free, open-source website creation platform. On a more technical level, WordPress is a content management system (CMS) written in PHP that uses a MySQL database. In non-geek speak, WordPress is the easiest and most powerful blogging and website builder in existence today.

## What is LVM?

Benefits
You can think of LVM as "dynamic partitions", meaning that you can create/resize/delete LVM "partitions" (they're called "Logical Volumes" in LVM-speak) from the command line while your Linux system is running: no need to reboot the system to make the kernel aware of the newly-created or resized partitions.

Other nice features that LVM "Logical Volumes" provide are:

- If you have more than one hard-disk, Logical Volumes can extend over more than one disk: i.e., they are not limited by the size of one single disk, rather by the total aggregate size.

- You can set up "striped" LVs, so that I/O can be distributed to all disks hosting the LV in parallel. (Similar to RAID-0, but a bit easier to set-up.)

- You can create a (read-only) snapshot of any LV. You can revert the original LV to the snapshot at a later time, or delete the snapshot if you no longer need it. This is handy for server backups for instance (you cannot stop all your applications from writing, so you create a snapshot and backup the snapshot LV), but can also be used to provide a "safety net" before a critical system upgrade (clone the root partition, upgrade, revert if something went wrong).

Source: https://askubuntu.com/questions/3596/what-is-lvm-and-what-is-it-used-for

# Bash Scripting:
- https://github.com/dylanaraps/pure-bash-bible

## For Linux lovers, how to create your own service:
- https://www.youtube.com/watch?v=2gyKkgguyxE
