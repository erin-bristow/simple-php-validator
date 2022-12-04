# simple-php-validator
Bash script that executes the [PHP command line option](https://www.php.net/manual/en/features.commandline.options.php) `--syntax-check` on all files in a directory and subdirectories. No need to exclude non-PHP files - the script takes care of that. Also automatically excludes the third-party `/vendor` directory.
  
## How to Use
Verify that your current shell is using bash. 
```
$ ps -p $$
    PID TTY          TIME CMD
   6101 pts/1    00:00:00 bash
```
Give the `.sh` program permission to execute. 
```
$ chmod +x validate-php.sh
```
Run the script! Note - it may take a few minutes to run, and may get temporarily stuck on certain syntax errors (not entirely sure why, maybe some types of errors take longer to analyze?).
```
$ ./validate-php.sh
```
