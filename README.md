# Shell scripting repository

## Shell script order and checklist

+ Shebang
+ Comments/file header
+ Global variables
+ Functions
    * Use local variables
+ Main script contents
+ Exit with an exit status
    * exit status at various exit points

### File operators (test)
| Operator    | Description |
| -------- | ------- |
| -d FILE  | True if file is a directory    |
| -e FILE  | True if file exists     |
| -f FILE  | True if file exists and is a regular file |
| -r FILE  | True if file is readable by you |
| -s FILE  | True if file exists and is not empty |
| -w FILE  | True if file is writable by you |
| -x FILE  | True if file is executable by you |
| -z STRING  | True if string is empty |
| -n STRING  | True if string is not empty |
| STRING1 = STRING2  | True if the strings are equal |
| STRING1 != STRING2  | True if the strings are not equal |

### Arithmetic operators (test)
| Operator    | Description |
| -------- | ------- |
| arg1 -eq qrg2  | True if arg1 is equal to arg2 |
| arg1 -ne qrg2  | True if arg1 is not equal to arg2 |
| arg1 -lt qrg2  | True if arg1 is less than arg2 |
| arg1 -le qrg2  | True if arg1 is less than or equal to arg2 |
| arg1 -gt qrg2  | True if arg1 is greater than arg2 |
| arg1 -ge qrg2  | True if arg1 is greater than or equal arg2 |