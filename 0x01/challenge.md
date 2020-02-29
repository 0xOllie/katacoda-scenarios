# Introduction to Linux
### Created by Oliver Collins for you

- Introduction
 - A brief explanation of Linux
 - Using the CLI - **C**ommand **L**ine **I**nterface
 - CLI quick reference 
 - Challenges

## Introduction
Welcome everybody! If you are reading this then **you** want to learn about Linux, I have made **zero assumptions** about your knowledge in this area and thus created several sections of this document. If you are comfortable using linux and would like to jump straight to the challenges then do so. If this is your first time using the Linux command line then I would suggest you read along and test the commands described below.

## A brief explanation of Linux
The family history of Linux is a long and detailed one, there are many ***nix** like systems out there but Linux is by far the most popular and widely used in the world today. Created in 1991 by a Finnish man by the name Linus Torvalds, the Linux kernel was designed to be open source and free for all to use - as it turns out people were very interested in using this brand new kernel to build their own operating systems and software.

> I'm not going to get into the GNU/Linux debate here, if you would like to read about all the other software that makes up a Linux based operating system you can read Richard Stallman's opinion [here](https://www.gnu.org/gnu/gnu-linux-faq.html)

In the modern era when you hear Linux thrown around people are usually talking about servers running [RHEL](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux), [CentOS](https://www.centos.org/) or [Ubuntu](https://ubuntu.com/server) these few operating systems make up the majority of production systems in the world today (*there are literally  thousands of kinds of Linux based operating systems, these three are the most common*). 
 
These operating systems are made up of many pieces but we'll be focusing on how to use them once we're logged in. For the sake of simplicity and because I have a personal prefference we will be using Ubuntu for our learnings today. 

## Using the CLI - Command Line Interface
Before we can use the CLI we need to have a machine to run commands on, because this is Katacoda a machine has been created for you to use. Usually when we need to login we will use one of the commands below to access a server using SSH - **S**ecure **Sh**ell.


    Using a password - you'll be prompted to enter it
	    ssh user@1.2.3.4
    or using a certificate - this is much safer than the option above
	    ssh user@1.2.3.4 -i myPrivateKey.pem

Upon successful login you'll see a screen that looks like this - take a look at your terminal now!

    Welcome to Linux, CTFs have been loaded. Have fun!
    root@teaching-server $
The first line in this output is a debugging message I put there to let me know my code works (it doesn't always work) the second line shows us a couple of things. Mainly who we are logged in as and on what computer we are using, our computer here is *teaching-server*.
| user | on  | server | cursor |
|--|--| -- | --|
| root | @ | teaching-server | $

Okay new we have a computer lets try some commands to find out where we are.

## CLI Quick Reference

|Command| Usage | Purpose |
|--|--|--|
| Who am I | `whoami` | Tells you who you are logged in as, just in case you forget
| Print working directory | `pwd` | Shows you where on this computer you are
| Change Directory | `cd /etc` | Moves you around the Linux file system
| List | `ls` or `ls -lah` | Shows you a list of files in the current directory
| Concatenate | `cat file.txt` or `cat .` | Useful for printing the contents of one or more files
|Copy | `cp file.txt copy.txt` or `cp -r dir dir2`| It copies things! `-r` copies an entire directory
|Move | `mv file.txt moved.txt` | Moves files and directories around, also useful for renaming things 
| Touch | `touch file.txt` | Creates a brand new empty file
| Make directory | `mkdir directory` | Creates a brand new directory
| Unzip tarballs | `tar xvf ball.tar.gz` & `tar cfzv something.tar.gz file.txt` | Used for zipping and unzipping files, tarballs are very common on the internet and in Linux world
| Aptitude | `apt install sl` (I wonder what this program is?) | Installs and removes programs on ubuntu
| Nano | `nano file.txt` | The best text editor on all of Linux (vim users fight me irl)
| Find | `find / --name file.txt` | Finds files on the computer
| Manual | `man command` | If you are unsure how to use a command run man infront of the command and you will be shown a detailed manual for that program
| Clear | `clear` | Clears the screen
|History | `history` | Shows you a history of what commands have been run
| Git | `git clone https://github.com/oliverjcollins/flag` | Very cool tool for managing source code, too much to talk about, but there are some good resources [here](https://rogerdudler.github.io/git-guide/)
|


## Challenges
This computer has had some flags hidden in various places around the file system, the main goal of these challenges is to get you comfortable using the Linux CLI and some of its tools. All the commands you will need are included in the reference section above but you may need to be a little be crafty

Below is the list of challenges and some hints
 1. Normal files - *welcome home root*
 2. Hidden files - *look a bit closer*
 3. Searching files -  *There's a flag file somewhere on this computer I'm sure*
 4. Sticky Tar - *I always lose these tarballs, can you find mine and open it*
 5. I got a new job! - *I'd check syslog, theres a funny message there*
 6. Hey man checkout my code - *If I were a good developer, where would my code live?*
