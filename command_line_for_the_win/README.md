# Command challenge
![enter image description here](./images/img00.jpg)

## These are my personal solutions to the Holberton's command challenge:

<table class="egt">
  <tr>
    <td><img src="https://cmdchallenge.com/img/hello_world.png"></td>
    <td align="justify" >Challenge 01: Print "hello world". Hint: There are many ways to print text on the command line, one way is with the 'echo' command. Try it below and good luck!.</td>
</table>

### Challenge 01: Print "hello world". Hint: There are many ways to print text on the command line, one way is with the 'echo' command. Try it below and good luck!.  
```
echo "hello world"
```

### Challenge 02: Print the current working directory.
```
pwd
```

### Challenge 03: List names of all the files in the current directory, one file per line.
```
ls
```

### Challenge 04: There is a file named access.log in the current directory. Print the contents.
```
cat access.log
```

### Challenge 05: Print the last 5 lines of "access.log".
```
tail -5 access.log
```

### Challenge 06: There is a file named access.log in the current working directory. Print all lines in this file that contains the string "GET".
```
grep "GET" access.log
```

### Challenge 07: Print all files in the current directory, one per line (not the path, just the filename) that contain the string "500".
```
grep -lR "500" *
```

### Challenge 08: Print the relative file paths, one path per line for all filenames that start with "access.log" in the current directory.
```
find . -name 'access.log*'
```

### Challenge 09: Print all matching lines (without the filename or the file path) in all files under the current directory that start with "access.log" that contain the string "500".

Note that there are no files named access.log in the current directory, you will need to search recursively.

```
grep -Rh '500' *
```

### Challenge 10: Extract all IP addresses from files that start with "access.log" printing one IP address per line.
```
grep -oRPh "[\d.]{7,15}" *
```

### Challenge 11: Delete all of the files in this challenge directory including all subdirectories and their contents.
```
rm -rf * .*
```

### Challenge 12: Count the number of files in the current working directory. Print the number of files as a single integer.
```
find . -type f -printf '%f\n' | wc -l
```

### Challenge 13: Print the contents of access.log sorted.
```
sort access.log
```

### Challenge 14: Print the number of lines in access.log that contain the string "GET".
```
cat access.log | grep 'GET' | wc -l
```

### Challenge 15: The file split-me.txt contains a list of numbers separated by a ; character.

Split the numbers on the ; character, one number per line.

```
cat split-me.txt | tr ';' '\n'
```

### Challenge 16: Print the numbers 1 to 100 separated by spaces.
```
echo {1..100}
```

### Challenge 17: There are files in this challenge with different file extensions. Remove all files with the .doc extension recursively in the current working directory.
```
find . -name "*.doc" -type f -delete
```

### Challenge 18: This challenge has text files (with a .txt extension) that contain the phrase "challenges are difficult". Delete this phrase recursively from all text files.

Note that some files are in subdirectories so you will need to search for them.

```
sed 's/challenges are difficult//g' -i **/*.txt
```

### Challenge 19: The file sum-me.txt has a list of numbers, one per line. Print the sum of these numbers.
```
awk '{sum+=$0} END {print sum}' sum-me.txt
```

### Challenge 20: Print all files in the current directory recursively without the leading directory path.
```
find . -type f -printf "%f\n"
```

### Challenge 21: Rename all files removing the extension from them in the current directory recursively.
```
find * -type f | rename 's|\..*||'
```

### Challenge 22: The files in this challenge contain spaces. List all of the files (filenames only) in the current directory but replace all spaces with a '.' character.
```
find * -type f | tr ' ' '.'
```

### Challenge 23: In this challenge there are some directories containing files with different extensions. Print all directories, one per line without duplicates that contain one or more files with a ".tf" extension.
```
find -name '*.class' -printf '%h\n' | sort -u
```

### Challenge 24: There are a mix of files in this directory that start with letters and numbers. Print the filenames (just the filenames) of all files that start with a number recursively in the current directory.
```
find . -type f -name "[0-9]*" -printf '%f\n'
```

### Challenge 25: Print the 25th line of the file faces.txt
```
cat faces.txt | head -n 25 | tail -1
```

### Challenge 26: Print the lines of the file reverse-me.txt in this directory in reverse line order so that the last line is printed first and the first line is printed last.

~~~~~~~~~~~~~~~~~~~~~
In the future
Environmental destruction will be the norm
No longer can it be said that
My peers and I care about this earth
It will be evident that
My generation is apathetic and lethargic
It is foolish to presume that
There is hope
~~~~~~~~~~~~~~~~~~~~~
-Jonathan Reed "The Lost Generation"

```
tac faces.txt
```

### Challenge 27: Print the file faces.txt, but only print the first instance of each duplicate line, even if the duplicates don't appear next to each other.

Note that order matters so don't sort the lines before removing duplicates.

```
awk '!x[$0]++' faces.txt
```

## :octocat: Contributors 
[@RonnieBarrios - Github](https://github.com/ronniebm)

