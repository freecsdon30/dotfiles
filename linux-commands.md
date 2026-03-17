### Linux commands for System administration 

1. **/etc/passwd** => user of linux system loginname,UID,GUID,command interpreter,home directory
2. **/etc/shadow** => also contains the user password
3. **/usr/profile** => for other users 

- bash is default shell for most users 

#### File Permission

0 = ---
1 = --x
2 = -w-
3 = -wx
4 = r--
5 = r-x
6 = rw-
7 = rwx

#### Regex Example
^abc       - matches 'abc' at the start of a line
abc$       - matches 'abc' at the end of a line
.          - matches any single character except newline
a*         - matches 0 or more of 'a'
a+         - matches 1 or more of 'a'
a?         - matches 0 or 1 of 'a'
a{3}       - matches exactly 3 'a's
a{2,5}     - matches between 2 and 5 'a's
[abc]      - matches 'a', 'b', or 'c'
[^abc]     - matches anything except 'a', 'b', or 'c'
[0-9]      - matches any digit
[a-zA-Z]   - matches any letter
\d         - matches any digit [0-9]
\D         - matches any non-digit
\w         - matches word character [a-zA-Z0-9_]
\W         - matches non-word character
\s         - matches whitespace (space, tab, newline)
\S         - matches non-whitespace
\b         - matches word boundary
\B         - matches non-word boundary
(abc)      - capture group
(?:abc)    - non-capturing group
a|b        - matches 'a' or 'b'
(?=abc)    - positive lookahead (followed by 'abc')
(?!abc)    - negative lookahead (not followed by 'abc')
(?<=abc)   - positive lookbehind (preceded by 'abc')
(?<!abc)   - negative lookbehind (not preceded by 'abc')

#### Signals

9  = SIGKILL   → Forcefully kill a process (cannot be caught or ignored)
10 = SIGUSR1   → User-defined signal 1
11 = SIGSEGV   → Segmentation fault (invalid memory access)
12 = SIGUSR2   → User-defined signal 2
13 = SIGPIPE   → Broken pipe (writing to a pipe with no reader)
14 = SIGALRM   → Alarm signal from timer
15 = SIGTERM   → Termination signal (graceful process stop)

#### General commands 
1. apropos => search for commands based on keyword
2. whatis => displays description of the command
3. man => manual page of a command
4. shutdown => to trigger a electronic shutdown of system
5. history => show history of commands (.bash_history)

#### Display and identification
1. clear command => clears the screen
2. echo => displays texts
3. date => display current date and time **IMPORTANT**
4. id => displays info about current user
5. who => displays name of logged in users
6. whoami => displays login of current user

#### File tree 
1. pwd => show current dir 
2. cd  => change directory
3. ls => show content of current dir 
4. find => use to find files **IMPORTANT**
5. mkdir => create a directory
6. touch => changes timestamp or create a new file if not exists
7. rmdir => remove a directory
8. rm => deletes a file or a directory
9. mv => move files to different location or rename it
10. cp => copies file

#### Visualization

1. file => displays type of file
2. more => displays content of multiple files screen by screen
3. less => displays content in vim manner
4. cat => concatinate content of multiple files and displays it 
5. head => displays begnning of a file
6. tail => displays end of a file
7. sort => sorts the line of a file **IMPORTANT**
8. wc => count the number of lines, bytes and chars **IMPORTANT**

#### Search
1. find => searches for file and directories **IMPORTANT**
    - name, size, permission, user/group, depth, action
2. whereis => searches for files related to a command
3. grep => searches for strings in a file **IMPORTANT**

#### Redirect and pipes 
1. > => overwrite the file 
2. >> => append to file 
3. | => link std out of first command to std in of another 

#### Special pointers
1. tee => its a pointer used to redirect output of a command somehwere while maintaing the screen display **IMPORTANT**
2. alias => used to give a alias to a command 
3. unalias => to delete a alias 
4. ; => run code sequentally ls\; cd home \; ls -lia

#### Advanced commands 
1. uniq => helps to remove duplicates 
2. xargs => take multiple args to a single command **IMPORTANT**
3. watch => to monitor the something in real time 2s interval
4. tree => tree visualization of a folder 
5. stat => displays stat of a file or folder (including impo times)

#### User management

UID: user identifier 
GID: group identifier 

##### Files related to user 
1. /etc/passwd => user
2. /etc/shadow => user
3. /etc/group => group 
4. /etc/gshadow => group
5. /etc/skel => file template to create user profile
6. /etc/default/useradd => default setting for user add
7. /etc/login.defs => encryption method (yescrypt)
8. /etc/gpasswd => allows to manage a group

1. groupadd => add group to a linux system for user
2. groupmod => allows to modify an existing group
3. groupdel => used to delete a group
4. useradd => used to add user 
5. usermod => used to modify a user
6. userdel => used to delete a user
7. chown => change owner of a file
8. chgrp => change group of a file
9. id => displays group and other info of user
10. newgrp => can select a supp group for a temp primary group
12. passwd => it manages user passwords
13. chage => it is used to change user passwd expiry information
14. su => change identity of a user

#### File system

1. fdisk => used for partitioning and list 
2. cfdisk =>> used for partitioning management and list interactive - GUI
3. parted => partition disk without drawbacks of fdisk also have recovery
4. mkfs => (make file system) used to create linux file system

##### Boot sector 
- first sector of bootable storage media (512 bytes)

1. MBR => master boot record (446 bytes) => stores bootloader
2. DPT => disk partition table (64 bytes) => partition status
3. BRID => boot record id (2 bytes) => whelther devices is usable to boot

GPT => GUID partition table

##### Super block
- is on each block and contains necessary info for utilization 

##### Table of inodes
- each record contains address of data block make up a file in partition
- files that remain without entries in inode table goes in /lost+found

1. fsck => repair tool for linux file system
2. mount => used to mount and view logical drives in the tree
3. umount => used to unmount logical drives
4. umask => allows to display or change the mask

1. /etc/fstab => read at startup contains mounts to be performed

#### Process management

- PID => process identifier
- PPID => parent process identifier
- init process destroyes orphan process

1. ps => displays status of running processes
2. kill => kill command sends a kill signal to process
3. nohup => runs a command even after you close the terminal
4. & => used to run a program asynchronously
5. fg => puts a process in foreground
6. bg => puts a process in background
7. jobs => shows list of processes running in background + current - next
8. nice => allow execution by specifying its priority 
9. renice => change priority of a process
10. top => displays process and resource consumption
11. pgrep => search for a process by name and returns pid 
12. pkill => send kill signal by default SIGTERM
13. killall => similar to pkill
14. pstree => show process progress in a tree style

#### Backup and restore
1. Backup => preserves the source of info afer operation 
2. Archive => removes the source of info afer operation 

##### Types of backups
1. Full backups => one time copy 
2. Incremental backups => updates after last full backup
3. Differential backup => refers to files change after full backup
4. Selective backup => backing up part of the system 

##### Tools for backups

1. tar => (tape archiver) allows adding files to existing backup
2. cpio => retain owners, groups date and time , skips damage file
3. untar => extract from a backup

#### The boot process
BIOS => basic input output system it loads **MBR**
MBR => Master boot record loads GRUB 
GRUB => Grand Unified bootloader (looks for compressed image of kernel and starts it)
KERNEL loads the systemd process with pid 1

##### Systemd
- its a service manager for linux operating system 
- have unit files
    1. service units => .service, system service
    2. target units => .target, a group of systmd units
    3. mount units => .automount, an automatic mount point for FS

1. systemctl => command used to manage service on linux system
2. systemctl rescue => simple envinronment for reparing your system 
3. systemctl emergency => if impossible to go in rescue go emergency to repair

##### Journald

- used to manage log files of syslog , kernel , initrafms (system startup logs
- journalctl -p priority

#### Configure, browser and test network 

1. ip => forget ifconfig command think ip. Shows details related to ip
2. nmtui => text user interface for controlling network manager
3. nmcli => cli for managing network manager
4. mtr => faster than traceroute and ping (to see packets and hops)
5. ss => to get status of port and sockets

/etc/hosts => file contain all the hosts to IP mapping
/etc/resolv.conf => DNS name resolution configuration

### Linux Directory Structure 

1. /bin => exec file of shell
2. /dev => contains special files or virtual files
3. /etc => core configurations 
4. /usr => exec and lib of most of system programs most of them is read only
5. /home => user personal data 
6. /lib => lib binaries that can be used by executables
7. /sbin => similar to binaries only can be accessed by sudo user 
8. /tmp => program and files info came during runtime
9. /boot => kernel and boot image files
10. /proc => info about currently running processes 
11. /opt => third party additional files that are not in repo connect with /bin files 
12. /root => similar to /home/root
13. /media => when you connect an external storage 
14. /mnt => manually mount a filesystem 
15. /srv => service data if you run a http server store data in srv 
