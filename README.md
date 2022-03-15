# bash_script
# ex21

The first script accepts the following arguments: 
- path to folder (or folder name in current location)
- file type   
  
The script goes through the received folder, reads the files of the type received, and prints the lines that contain that word.
If the word does not appear at all in any of the files, the script does not print anything.\
For example, suppose you have the __localDirectory__ folder with the following files:\
image.png\
script.sh\
text.txt\
And the content of a txt.text file is:
> This is a text file\
> It contains many words\
> This is an example for a simple text file


For the run `./ex21.sh localDirectory txt text` will be the output:

> This is a text file\
> This is an example for a simple text file

A word that contains the word we are looking for (but is longer) will not count.
Go through the contents of the folder in lexicographic order.


# ex21
This script accepts the following arguments:
- folder path (or folder name in current location)
- file type (for example c, txt)
- non-negative integer


The script goes through the received folder and its subfolders (up to the last level in the tree), reads the files of the type received, and prints to the screen the rows that meet the following two conditions:
1. Contain the received word 
2. The line length is greater than or equal to the number obtained (line length will be defined as the number of words it contains)


If this word does not appear in the file at all, do not print anything.\
For example, suppose you have the __localDirectory__ folder with the following files:\
image.png\
script.sh\
text.txt\
And the content of a txt.text file is:
> This is a text file\
> It contains many words\
> This is an example for a simple text file


For the run `./ex12.sh localDirectory txt text 7` will be the output:

> This is an example for a simple text file

# ex23
In linux systems running systemd there is a `/etc/os-release` file that contains information about the distribution version of the operating system.\
Sample file:
```
NAME="Ubuntu"
VERSION="20.04.1 LTS (Focal Fossa)"
ID=ubuntu
ID_LIKE=debian
...
```
As you can see, the file contains the distribution name, version and other details.\
In addition, there is the `hostnamectl` command that allows you to control the hostname, and change the settings associated with it.\
__ex23__ script accepts a single argument. The argument can be one of the following strings: `system, host.` The strings mark the category of information we want to retrieve. Additionally, the script can have the following flags:
```
1. name 
2. version
3. pretty_name
4. home_url
5. support_url
6. static_hostname
7. icon_name
8. machine_id
9. boot_id
10. virtualization
11. kernel
12. architecture
```
The first five will only work if `system` input is received, and the rest only if `host` input is received.\
__Exclusion__: If the `name` flag is received with the `host` input, printing the line of the __icon_name__ will be considered a valid output.\
If the script runs without a flag, then all the information in the requested file will be printed. Otherwise, only the requested information will be printed on the flags.
Script also supports the combination of several flags together.





