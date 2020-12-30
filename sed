sed - stream editor
syntax - sed 'action' <filename>

1. sed 's/old/new/g' <filename> ; Replace a word - 
s=substitute, g=global(replace all the occurrences of the string in the line)
sed -i 's/old/new' <filename> ; For saving the result in same file: 

sed '7! s/old/new/g' <filename> ; make substitution in all lines except 7th.

sed 's/unix/linux/3g' geekfile.txt ; The following sed command replaces the third, fourth, fifth… “unix” word with “linux” word in A LINE.

2. sed 's/^/ word /g' <filename>  ; Appending a string in the start of every line: 
3. sed 's/$/ word /g' <filename> ; Appending a string in the end of every line:   

4. Add a blank line after every line: sed G <filename>

5. cat -n <filename> | sed -n 3,5p ; Print a particular set of lines: 
This will print the lines from 3 to 5.
cat -n geekfile | sed -n -e 2p -e 4p ; print line 2 and line 4.
sed -n '$p' <filename>

6. sed '3d' <filename> ;Delete a line:  this will delete 3rd line; d=delete
cat -n geekfile | sed '2,4d' ; delete lines from 2 to 4.
sed '$d' -> delete last line; sed '1d' -> delete first line

7. sed -e '1d' -e 'G' file ; to use more than one action. This will delete the first line and add a blank line after every line.
e=expresssion

8. sed 'G;G' file ;  to add two lines after every line.

9. sed '/<keyword>/ s/old/new/g' <filename> ; search for a keyword and substitute a particular word in that line.

10. sed '0~3d' <filename> ; delete every 3rd line.
    sed '0~3p' <filename> ; every 3rd line will be duplicated.

11. sed 's/old/\U&/g' <filename> ; substitute old with OLD
can use i with g (/ig) to ignore case

12. sed 's/#.*//g' <filename> ; remove the comments from file

13. sed '/word/q' filename ;  quit on the first occurence of word
sed '2q' ; quit on second line

14 sed '/^$/d' file ; delete blanklines in the file; ^-start $-END (combining both means a blank line)



