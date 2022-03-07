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
And the content of a txt.text file is:\
> This is a text file\
> It contains many words\
> This is an example for a simple text file


For the run `./ex21.sh localDirectory txt text` will be the output:

> This is a text file\
> This is an example for a simple text file

A word that contains the word we are looking for (but is longer) will not count.
Go through the contents of the folder in lexicographic order.


# ex21
