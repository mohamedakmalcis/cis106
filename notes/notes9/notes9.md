# Notes 9

---

# `grep`

## **Definition**

`grep` (Global Regular Expression Print) is used to search for specific patterns or text inside files or command output.

## **Usage / Formula**

```bash
grep [options] "pattern" file
```

## **Examples**

```bash
grep "error" system.log          # Find lines containing "error"
grep -i "error" system.log       # Case-insensitive search
grep -n "user" access.log        # Show line numbers
```

---

# `awk`

## **Definition**

`awk` is a powerful text-processing tool used for pattern scanning, column extraction, and reporting.

## **Usage / Formula**

```bash
awk 'pattern {action}' file
```

## **Examples**

```bash
awk '{print $1}' file.txt         # Print first column
awk '{print $3, $4}' file.txt     # Print columns 3 and 4
awk '$3 == "user42"' file.txt    # Filter rows where column 3 matches
```

---

# `sed`

## **Definition**

`sed` (Stream Editor) is used to modify text in files or streams (search, replace, delete).

## **Usage / Formula**

```bash
sed 's/old/new/' file
```

## **Examples**

```bash
sed 's/error/success/' file.txt        # Replace first occurrence per line
sed 's/error/success/g' file.txt       # Replace all occurrences
sed -n '5,10p' file.txt                # Print lines 5 to 10
```

---

# Pipe Operator `|`

## **Definition**

The pipe (`|`) sends the output of one command as input to another command.

## **Usage / Formula**

```bash
command1 | command2
```

## **Examples (3 required)**

```bash
cat file.txt | grep "error"            # Search inside file output
ls -l | grep ".txt"                   # Filter .txt files
cat access.log | awk '{print $3}'      # Extract usernames
```

---

# Output Redirection `>`

## **Definition**

`>` saves the output of a command into a file (overwrites existing content).

## **Usage / Formula**

```bash
command > file.txt
```

## **Examples (3 required)**

```bash
ls > files.txt                         # Save directory listing
cat file.txt > copy.txt               # Copy file content
echo "Hello" > greeting.txt          # Write text to file
```

---

# Append Redirection `>>`

## **Definition**

`>>` appends output to a file without deleting existing content.

## **Usage / Formula**

```bash
command >> file.txt
```

## **Examples (3 required)**

```bash
echo "New line" >> file.txt         # Add line to file
date >> log.txt                       # Append date to log file
ls >> files.txt                       # Append directory listing
```

---
