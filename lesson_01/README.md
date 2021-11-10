# Getting Started With Haskell

Run script in base file to install Haskell packages:
``` bash
$ bash install_haskell.bash
```

Examples of haskell files:
- hello.hs
- messy_first_prog.hs
- first_prog.hs

Compile haskell file with compiler:
``` bash
$ ghc hello.hs
```

Name exicutable by passing in -o:
``` bash
$ ghc hello.hs -o helloworld
```

To run interactive interface do:
``` bash
$ ghci
```

To quit interactive interface:
``` bash
$ ghci
GHCI> :q
Leaving GHCi
```

Unsing the interpreter allows you to test code and code on the fly.

To Load file into interpreter:
``` bash
$ ghci hello.hs
```
or
``` bash
$ ghci
GHCI> :l hello.hs
```

