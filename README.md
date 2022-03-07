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


