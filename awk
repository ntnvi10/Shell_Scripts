Parse each field in a document.
Syntax - awk 'pattern{action}' <filename>
Default delimiter in awk is a white space

1. awk '{print}' <filename> ; print all the lines as it is (just like cat)

2. awk '{print $1}' <filename> ; print the first column of each line.
   awk '{print $1, $2}' <filename> ; print first and second column of each line.
   awk '{print $1.$2}' <filename> ; concatenate first and second column (no space)

3. awk '/word/{print}' <filename> ; print all the lines with mathching word (case sensitive)

4. awk '/[0-9]/{print}' <filename> ; print all the lines which contains numbers
  awk '/^[0-9]/{print}' <filename> ; print all the lines that start with numbers.
  awk '/[0-9]$/{print}' <filename> ; print all the lines that ends with numbers.

5. Using if conditions:-
awk '{ if( $1 == 123 ) print}' <filename> ; if the first column is 123 then it will print that line.
awk '{ if( $1 ~ /123/ )print}' <filename>

6. Changing defualt delimiter in awk from white space to something else:
awk -F: '{print$2}' <filename> ; print the second column delimited by :
