# Notes 8

## `cat`

**Definition:**
The `cat` (concatenate) command is used to display, combine, and create files.

**Usage / Formula:**

```bash
cat [options] [file_name]
```

**Examples:**

```bash
cat file.txt                 # Display contents of file
cat file1.txt file2.txt      # Concatenate two files
cat > newfile.txt            # Create a new file (overwrite)
cat >> file.txt              # Append to a file
```

---

## `tac`

**Definition:**
The `tac` command is the reverse of `cat`; it displays file contents in reverse order (last line first).

**Usage / Formula:**

```bash
tac [file_name]
```

**Examples:**

```bash
tac file.txt                 # Display file in reverse line order
```

---

## `head`

**Definition:**
The `head` command displays the first few lines of a file (default is 10 lines).

**Usage / Formula:**

```bash
head [options] [file_name]
```

**Examples:**

```bash
head file.txt                # First 10 lines
head -n 5 file.txt           # First 5 lines
```

---

## `tail`

**Definition:**
The `tail` command displays the last few lines of a file (default is 10 lines).

**Usage / Formula:**

```bash
tail [options] [file_name]
```

**Examples:**

```bash
tail file.txt                # Last 10 lines
tail -n 20 file.txt          # Last 20 lines
tail -f logfile.txt          # Follow file updates in real time
```

---

## `cut`

**Definition:**
The `cut` command extracts specific columns or fields from text files.

**Usage / Formula:**

```bash
cut [options] [file_name]
```

**Common Options:**

* `-d` → delimiter
* `-f` → field number

**Examples:**

```bash
cut -d "," -f 1 file.csv     # Extract first column from CSV
cut -c 1-5 file.txt           # Extract characters 1 to 5
```

---

## `sort`

**Definition:**
The `sort` command sorts lines in a file alphabetically or numerically.

**Usage / Formula:**

```bash
sort [options] [file_name]
```

**Common Options:**

* `-n` → numeric sort
* `-r` → reverse order

**Examples:**

```bash
sort file.txt                # Alphabetical sort
sort -n numbers.txt          # Numeric sort
sort -r file.txt             # Reverse sort
```

---

## `wc`

**Definition:**
The `wc` (word count) command counts lines, words, and characters in a file.

**Usage / Formula:**

```bash
wc [options] [file_name]
```

**Common Options:**

* `-l` → line count
* `-w` → word count
* `-c` → character count

**Examples:**

```bash
wc file.txt                 # Lines, words, characters
wc -l file.txt              # Count lines only
wc -w file.txt              # Count words only
```

---
