sed - stream editor
syntax - sed 'action' <filename>

1. Replace a word - sed 's/old/new/g' <filename>
s=substitute, g=global(replace all the occurrences of the string in the line)
For saving the result in same file: sed -i 's/old/new' <filename>

sed '7! s/old/new/g' <filename> ; make substitution in all lines except 7th.

sed 's/unix/linux/3g' geekfile.txt ; The following sed command replaces the third, fourth, fifth… “unix” word with “linux” word in A LINE.

2. Appending a string in the start of every line: sed 's/^/ word /g' <filename> 
3. Appending a string in the end of every line:   sed 's/$/ word /g' <filename> 

4. Add a blank line after every line: sed G <filename>

5. Print a particular set of lines: cat -n <filename> | sed -n 3,5p
This will print the lines from 3 to 5.
cat -n geekfile | sed -n -e 2p -e 4p ; print line 2 and line 4.

6. Delete a line: sed '3d' <filename> ; this will delete 3rd line; d=delete
cat -n geekfile | sed '2,4d' ; delete lines from 2 to 4.

