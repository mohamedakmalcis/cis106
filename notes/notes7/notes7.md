# Notes 7

## Wildcards

### 1. The Asterisk (*) 
The asterisk represents zero or more characters. It is the most flexible wildcard and is typically used when you know how a name starts or ends, but not the middle or the full length.
#### Example 1 (File Search): `ls *.jpg`
Matches every file that ends in `.jpg`, regardless of the filename (e.g., `sunset.jpg, photo.jpg`, or `a.jpg`).
#### Example 2 (Word Search): `apple*`
Matches "apple", "apples", "applesauce", or "applecart".
#### Example 3 (Database/SQL): `SELECT * FROM Users WHERE Name LIKE 'Sm%';`
Finds all users whose names start with "Sm", such as "Smith", "Smyth", or "Small".

### 2. The Question Mark (?)
The question mark represents exactly one character. Use this when you know the exact length of the string but are unsure of a specific character.
#### Example 1 (File Search): `ls file?.txt`
Matches file1.txt or fileA.txt, but will not match file10.txt because that has two characters where the question mark is.
#### Example 2 (Data Filtering): `d?g`
Matches "dog" or "dig", but not "drug".
#### Example 3 (System Commands): `rm backup_??.zip`
Matches files like `backup_01.zip` or `backup_ab.zip`, ensuring you only delete files with a two-character suffix.

### 3. Square Brackets ([ ])
Square brackets are used to match any one character inside the brackets. You can specify a list of characters or a range.
#### Example 1 (Specific Set): `ls [ba]at.txt`
Matches `bat.txt` and `aat.txt`, but ignores `cat.txt`.
#### Example 2 (Ranges): `image[1-3].png`
Matches `image1.png`, `image2.png`, and `image3.png`.
#### Example 3 (SQL/Regex): `WHERE ZipCode LIKE '9021[0-5]'`
Finds zip codes from 90210 through 90215.

## Brace Expansion
Brace expansion is a powerful feature in shells like Bash and Zsh that allows you to generate arbitrary strings. When combined with the `mkdir -p` command, it becomes a high-speed tool for building complex, nested directory structures in a single line.
The syntax uses curly braces `{}` to contain a comma-separated list of items or a range.
### The Syntax Basics

* List: `{item1,item2,item3}`
* Range: `{1..5} or {a..z}`
* Nesting: `{dir1/{subdir1,subdir2}}`
The `-p` (parent) flag in `mkdir` is essential here because it tells the system to create any necessary parent directories that don't already exist.
#### Example 1: Project Scaffolding
If you are starting a new software project, you often need a standard set of folders for source code, documentation, and testing.
* The Command: `mkdir -p project/{src,docs,tests,bin}`
#### Example 2: Nested Year and Month Structure
If you are organizing data or logs by date, you can nest expansion sets inside one another to create a deep tree instantly.
* The Command: `mkdir -p archive/202{4..6}/{01..12}`