# simple-php-validator
Bash script that executes the [PHP command line option](https://www.php.net/manual/en/features.commandline.options.php) `--syntax-check` on all files in a directory. No need to exclude non-PHP files. 

## How to Use
Verify that your current shell is using bash. 
```
$ ps -p $$
    PID TTY          TIME CMD
   6101 pts/1    00:00:00 bash
```
Give the `.sh` program permission to execute. 
```
chmod +x validate-php.sh
```
