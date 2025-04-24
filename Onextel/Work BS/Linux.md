## Tips and tricks regarding of the setup of Linux 

Best suited browser for linux 
- FIrefox 
- Vivelad 
- Chrome 

Text Editor in Ubuntu is called as Gedit 


## Linux short cuts 
- Ctrl + shift + "+" (zoom in)
- Ctrl + "-" (zoom out)
- Ctrl + shift + c (copy)
- Ctrl + shift + v (paste)

## Command to know 

```shell 
sudo apt install program_name
```
sudo : super user do 
apt : advance package ( managing package )
- apt can do install delete update 
- `sudo apt install -y program` this will accept all of the prompt in here
- install is the command used after apt 


```shell
vim foo.txt
```
vim is a editor 
esc wq to save and exit 


```shell
cp foo.txt Desktop/foo-copy.txt
```
cp : does the copy 
foo.txt : original text file 
Desktop : path of the file 
foor-copy.txt : copied file name 

```shell
mv Desktop/foo-copy.txt
```
mv : to move the file present 
also `mv foo-copy.txt foo2.txt` to rename the copy made 

```shell
rm foo2.txt 
```
rm to remove the file present 

```shell 
history 
```
you can use to know the history commands that you had used 

```shell
df
```
you use this to know the size present in the disk 

```shell
cat foo.txt 
```
too display the file 
```shell
cat foo.txt | sort
```
too sort it accordingly 

```shell 
whoami 
```
this will give you your name 

```shell
man wc
```
this will tell what the command does 
manual 
wc - print new line word and byte counts for each file 

```shell
echo Hello World
```
use this to print anything on the command line 

```shell
sudo chown mike foo.txt 
```
this will change the owner of that file using the command `chown`

```shell
sudo chmod 444 foo.txt 
```
this will change the permission to all of them can just read 

```shell
wget https://download-file-name -O download-new-name
```
this will download 


```shell 
locate bin/zip
```
this will locate to whatever that matches the file path 

## Grep commands 
> used to search a text or a regular expression 


## SSH commands 


## Listing the files command

- lists the contents of the current directory in a long, human-readable format, sorted by modification time in reverse order (newest first).
```bash
ls -lrth
```
