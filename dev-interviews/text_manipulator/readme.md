# Text Manipulator
Write a program that simulates a set of text manipulation commands.

Given an input piece of text and a string of commands, output the mutated input text and cursor position.

## Starting simple
### Commands
- `h`: move cursor one character to the left
- `l`: move cursor one character to the right
- `r<c>`: replace character under cursor with `<c>`  # NOTE: It doesn't say to move the cursor

### Repeating commands
All commands can be repeated N times by prefixing them with a number.

- `[N]h`: move cursor `N` characters to the left
- `[N]l`: move cursor `N` characters to the right
- `[N]r<c>`: replace `N` characters, starting from the cursor, with `<c>` and move the cursor

### Examples
We'll use `Hello World` as our input text for all cases:

```
 Input: hhlhllhlhhll
Output: Hello World
          _
          2

 Input: rhllllllrw
Output: hello world
              _
              6

 Input: rh6l9l4hrw
Output: hello world
              _
              6

 Input: 9lrL7h2rL
Output: HeLLo WorLd
           _
           3

 Input: 999999999999999999999999999lr0
Output: Hello Worl0
                  _
                 10

 Input: 999rs
Output: sssssssssss
                  _
                 10
```

## Other commands
- `[N]f<c>` move to the nearest character `<c>` after the cursor
- `[N]x`: delete `N` characters from cursor onwards
- `y<motion>`: yank text with the given motion into the clipboard
        - `<motion>` is any command that moves the cursor; like `h`, `l`, and `f`
- `[N]p`: paste text from the clipboard `N` times (to the right of the cursor)
- `[N]u`: undo `N` commands



## Questions
- Why does 'w'.to_i = 0?  How else can you test a string number to be an integer?