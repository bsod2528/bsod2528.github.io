---
layout: post
media: /assets/blogs/blog-2.gif
toc: true
tags: tech linux
anchor: false
sidenav: false
---

Created by [Linus Torvalds](https://www.wikiwand.com/en/Linus_Torvalds) in the 90s to have his own free version of UNIX which was closed source. Initially named “freax” where the `free` denotes free OS and `x` denoted Unix like. Later named `Linux` as it was and is Linus’s version of UNIX. History can be learnt by watching many videos or reading online. All we need to know is the how and what’s of Linux.

You do have to understand that Linux is just a project which provides the base kernel. What is a kernel? It is the main software that acts like a bridge between the applications built on the OS with the hardware of the system.

Linux was used by hobbyists in the beginning, later on became more popular as NASA replaced their systems with Linux. The OS became more prevalent once OEMs like IBM, HP, and Dell started offering Linux instead of Windows! All the network serves, data centers and many more use Linux as it’s free!

However, the next big breakthrough for Linux was when the Android Project forked Linux and boom! Every single android device runs on the modified version of the Linux kernel.

# History

The entire Linux history is present on it’s Wikipedia page. You can refer by clicking [here](https://www.wikiwand.com/en/Linux). I’m not going to type content that’s in Wikipedia here entirely and since it’s the history, it’s best to refer

# Key Concepts

If you’re going to use Linux as a daily driver or for work, you’re going to need a lot of things before starting off. The below give a small introduction to most of the concepts we need to understand few main concepts.

## Kernel

As mentioned before, a kernel is the main software which bridges the gap between the end result software (a GUI desktop environment where we’re able to do stuff with the help of applications) and the hardware that we use to work on.

## CLI

Command line interface the default method in which a user can interact with the OS. Both terminal a

### Terminal

This is the application in which a shell is hosted. Multiple shells can be used installed in your Linux system. There are different terminals present:

- Konsole
- Terminator
- GNOME Terminal
- Guake

### Shell

An interpreter which allows us to interact with the OS. There are many different shell interpreters. Bash is one of the most famous ones out there. There are many different shells present there. `command prompt` is used in Windows machines. One of the most famous shells are:

- Bash
- Csh
- Zsh

Consider the terminal as a PC and Shell as an application. So you need the PC to interact with the application.

{%
    include image.html
    src="/assets/images/blog-2-shell.png"
    caption="The below picture is my Bash shell opened in cinnamon desktop environment which ships GNOME Terminal by default in Arch linux!"
%}

## Distros

Distro is a pet-name, nick-name, short form, colloquial method of calling “Distribution”. As we know, Linux is just a kernel. Many people utilise this kernel, add features like network settings, display preferences, user accounts, and security options. Users can customize the operating system to suit their specific needs. So each particular distro is just using the base kernel and their own configurations.

The most famous distros are:

- [Ubuntu](https://ubuntu.com/)
- [Linux Mint](https://linuxmint.com/)
- [Debian](https://www.debian.org/)
- [Fedora](https://fedoraproject.org/)
- [CentOS](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjurNvJv8iEAxUXxjgGHRLmAiQQFnoECAYQAQ&url=https%3A%2F%2Fwww.centos.org%2F&usg=AOvVaw24F1kPE8esqFjSkPl4FTQj&opi=89978449)
- [Arch Linux](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwi-o7zPv8iEAxVE1jgGHUOdAqcQFnoECAgQAQ&url=https%3A%2F%2Farchlinux.org%2F&usg=AOvVaw3X9YYIhQ9BYf5SUFHaBZ4z&opi=89978449)
- [openSUSE](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjz2uTTv8iEAxUe4zgGHSdSC6gQFnoECAYQAQ&url=https%3A%2F%2Fwww.opensuse.org%2F&usg=AOvVaw04JYVJT5HYGKWAvvyoPYf_&opi=89978449)

## File System Hierarchy

The organisation standard which all Linux distros follow to store data. That’s it. The below is the main root files present in arch linux. I’ve linked wikipedia here to refer to all check the purposes of each folder. [Click here for Wikipedia.](https://www.wikiwand.com/en/Filesystem_Hierarchy_Standard)

{%
    include image.html
    src="/assets/images/blog-2-nemo.png"
    caption="This is how the directory looks like using Nemo File Explorer in Arch Linux."
%}

# Next Week

1. I will not be showcasing a tutorial or a heading will not be present on how to install Linux as that’s something one has to physically do to understand the complexity due to each distro being different. Some distros require CLI to install (Arch Linux) whereas others use GUI. So the process does change. To give some insight:
    - partitioning has to be done either in CLI or via GUI
    - mounting of those partitioned drives has to be done.
    - converting it to FAT32 file system.
    - installing your distro.
2. The below will be introduced accordingly:
    1. Package Management
    2. User and Group Management
    3. Permissions and Ownership

It might not seem like a lot, but the depth present is deep. Hope you enjoyed reading, thank you!

{%
    include paginate.html
    back="/pages/blog.html"
    _back="Blogs"
%}
