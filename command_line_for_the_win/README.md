![enter image description here](./images/img00.jpg)
<p align="justify">
CMD CHALLENGE is a pretty cool game challenging you on Bash skills. Everything is done via the command line and the questions are becoming increasingly complicated. It’s a good training to improve your command line skills!. Next you will find my personal solutions to the challenges:
</p>

<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/hello_world.png"></td>
    <td width="90% align="justify"><b>Challenge 01:</b><br><hr>Print "hello world". Hint: There are many ways to print text on the command line, one way is with the 'echo' command. Try it below and good luck!.</td>
</table>

```
echo "hello world"
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/current_working_directory.png"></td>
    <td width="90%" align="justify"><b>Challenge 02:</b><br><hr>Print the current working directory.</td>
</table>

```
pwd
```

<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/list_files.png"></td>
    <td width="90% align="justify"><b>Challenge 03:</b><br><hr>List names of all the files in the current directory, one file per line.</td>
</table>

```
ls
```

<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/print_file_contents.png"></td>
    <td width="90% align="justify"><b>Challenge 04:</b><br><hr>There is a file named access.log in the current directory. Print the contents.</td>
</table>

```
cat access.log
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/last_lines.png"></td>
    <td width="90% align="justify"><b>Challenge 05:</b><br><hr>Print the last 5 lines of "access.log".</td>
</table>

```
tail -5 access.log
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/find_string_in_a_file.png"></td>
    <td width="90% align="justify"><b>Challenge 06:</b><br><hr>There is a file named access.log in the current working directory. Print all lines in this file that contains the string "GET".</td>
</table>

```
grep "GET" access.log
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/search_for_files_containing_string.png"></td>
    <td width="90% align="justify"><b>Challenge 07:</b><br><hr>Print all files in the current directory, one per line (not the path, just the filename) that contain the string "500".</td>
</table>

```
grep -lR "500" *
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/search_for_files_by_extension.png"></td>
    <td width="90% align="justify"><b>Challenge 08:</b><br><hr>Print the relative file paths, one path per line for all filenames that start with "access.log" in the current directory.</td>
</table>

```
find . -name 'access.log*'
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/search_for_string_in_files_recursive.png"></td>
    <td width="90% align="justify"><b>Challenge 09:</b><br><hr>Print all matching lines (without the filename or the file path) in all files under the current directory that start with "access.log" that contain the string "500".</td>
</table>

Note that there are no files named access.log in the current directory, you will need to search recursively.

```
grep -Rh '500' *
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/extract_ip_addresses.png"></td>
    <td width="90% align="justify"><b>Challenge 10:</b><br><hr>Extract all IP addresses from files that start with "access.log" printing one IP address per line.</td>
</table>

```
grep -oRPh "[\d.]{7,15}" *
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/delete_files.png"></td>
    <td width="90% align="justify"><b>Challenge 11:</b><br><hr>Delete all of the files in this challenge directory including all subdirectories and their contents.</td>
</table>

```
rm -rf * .*
```

<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/count_files.png"></td>
    <td width="90% align="justify"><b>Challenge 12:</b><br><hr>Count the number of files in the current working directory. Print the number of files as a single integer.</td>
</table>

```
find . -type f -printf '%f\n' | wc -l
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/simple_sort.png"></td>
    <td width="90% align="justify"><b>Challenge 13:</b><br><hr>Print the contents of access.log sorted.</td>
</table>

```
sort access.log
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/count_string_in_line.png"></td>
    <td width="90% align="justify"><b>Challenge 14:</b><br><hr>Print the number of lines in access.log that contain the string "GET".</td>
</table>

```
cat access.log | grep 'GET' | wc -l
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/split_on_a_char.png"></td>
    <td width="90% align="justify"><b>Challenge 15:</b><br><hr>The file split-me.txt contains a list of numbers separated by a ; character. Split the numbers on the ; character, one number per line.</td>
</table>

```
cat split-me.txt | tr ';' '\n'
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/print_number_sequence.png"></td>
    <td width="90% align="justify"><b>Challenge 16:</b><br><hr>Print the numbers 1 to 100 separated by spaces.</td>
</table>

```
echo {1..100}
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/remove_files_with_extension.png"></td>
    <td width="90% align="justify"><b>Challenge 17:</b><br><hr>There are files in this challenge with different file extensions. Remove all files with the .doc extension recursively in the current working directory.</td>
</table>

```
find . -name "*.doc" -type f -delete
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/replace_text_in_files.png"></td>
    <td width="90% align="justify"><b>Challenge 18:</b><br><hr>This challenge has text files (with a .txt extension) that contain the phrase "challenges are difficult". Delete this phrase recursively from all text files.</td>
</table>

Note that some files are in subdirectories so you will need to search for them.

```
sed 's/challenges are difficult//g' -i **/*.txt
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/sum_all_numbers.png"></td>
    <td width="90% align="justify"><b>Challenge 19:</b><br><hr>The file sum-me.txt has a list of numbers, one per line. Print the sum of these numbers.</td>
</table>

```
awk '{sum+=$0} END {print sum}' sum-me.txt
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/just_the_files.png"></td>
    <td width="90% align="justify"><b>Challenge 20:</b><br><hr>Print all files in the current directory recursively without the leading directory path.</td>
</table>

```
find . -type f -printf "%f\n"
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/remove_extensions_from_files.png"></td>
    <td width="90% align="justify"><b>Challenge 21:</b><br><hr>Rename all files removing the extension from them in the current directory recursively.</td>
</table>

```
find * -type f | rename 's|\..*||'
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/replace_spaces_in_filenames.png"></td>
    <td width="90% align="justify"><b>Challenge 22:</b><br><hr>The files in this challenge contain spaces. List all of the files (filenames only) in the current directory but replace all spaces with a '.' character.</td>
</table>

```
find * -type f | tr ' ' '.'
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/dirs_containing_files_with_extension.png"></td>
    <td width="90% align="justify"><b>Challenge 23:</b><br><hr>In this challenge there are some directories containing files with different extensions. Print all directories, one per line without duplicates that contain one or more files with a ".tf" extension.</td>
</table>

```
find -name '*.tf' -printf '%h\n' | sort -u
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/files_starting_with_a_number.png"></td>
    <td width="90% align="justify"><b>Challenge 24:</b><br><hr>There are a mix of files in this directory that start with letters and numbers. Print the filenames (just the filenames) of all files that start with a number recursively in the current directory.</td>
</table>

```
find . -type f -name "[0-9]*" -printf '%f\n'
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/print_nth_line.png"></td>
    <td width="90% align="justify"><b>Challenge 25:</b><br><hr>Print the 25th line of the file faces.txt</td>
</table>

```
cat faces.txt | head -n 25 | tail -1
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/reverse_readme.png"></td>
    <td width="90% align="justify"><b>Challenge 26:</b><br><hr>Print the lines of the file reverse-me.txt in this directory in reverse line order so that the last line is printed first and the first line is printed last.</td>
</table>

```
In the future
Environmental destruction will be the norm
No longer can it be said that
My peers and I care about this earth
It will be evident that
My generation is apathetic and lethargic
It is foolish to presume that
There is hope

-Jonathan Reed "The Lost Generation"
```
<br>

```
tac reverse-me.txt
```


<br>
<table border="0">
  <tr>
    <td width="10%"><img src="https://cmdchallenge.com/img/remove_duplicate_lines.png"></td>
    <td width="90% align="justify"><b>Challenge 27:</b><br><hr>Print the file faces.txt, but only print the first instance of each duplicate line, even if the duplicates don't appear next to each other.</td>
</table>

Note that order matters so don't sort the lines before removing duplicates.

```
awk '!x[$0]++' faces.txt
```

## :octocat: Contributors 
[@RonnieBarrios - Github](https://github.com/ronniebm)

