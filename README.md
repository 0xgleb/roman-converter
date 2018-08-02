# roman-converter

This is a console app written in Haskell that takes a positive integer and converts it to its Roman numeral representation.

## Getting started

### Prerequisites

You need to have `stack` build tool installed on your computer to compile the project.

### Running the app

Clone the repository.

```bash
$ git clone https://github.com/gleb-dianov/roman-converter.git
```

Compile the project.

```bash
$ cd roman-converter
$ stack build
```

Run the project.

```bash
$ stack exec roman-converter
```

## Examples

```bash
$ stack exec roman-converter
Enter a positive integer: 
hello?
Error: Invalid input!
$ stack exec roman-converter
Enter a positive integer: 
12.7
Error: Invalid input!
$ stack exec roman-converter
Enter a positive integer: 
-17
Error: The integer must be positive!
$ stack exec roman-converter
Enter a positive integer: 
0
Error: The integer must be positive!
$ stack exec roman-converter
Enter a positive integer: 
9
IX
$ stack exec roman-converter
Enter a positive integer: 
1990
MCMXC
$ stack exec roman-converter
Enter a positive integer: 
47
XLVII
```

## Running the tests

```bash
$ stack test
```
