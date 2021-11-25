# Born2beroot

## What is LVM?

Benefits
You can think of LVM as "dynamic partitions", meaning that you can create/resize/delete LVM "partitions" (they're called "Logical Volumes" in LVM-speak) from the command line while your Linux system is running: no need to reboot the system to make the kernel aware of the newly-created or resized partitions.

Other nice features that LVM "Logical Volumes" provide are:

- If you have more than one hard-disk, Logical Volumes can extend over more than one disk: i.e., they are not limited by the size of one single disk, rather by the total aggregate size.

- You can set up "striped" LVs, so that I/O can be distributed to all disks hosting the LV in parallel. (Similar to RAID-0, but a bit easier to set-up.)

- You can create a (read-only) snapshot of any LV. You can revert the original LV to the snapshot at a later time, or delete the snapshot if you no longer need it. This is handy for server backups for instance (you cannot stop all your applications from writing, so you create a snapshot and backup the snapshot LV), but can also be used to provide a "safety net" before a critical system upgrade (clone the root partition, upgrade, revert if something went wrong).
