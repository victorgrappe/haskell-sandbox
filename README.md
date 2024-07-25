# haskell-sandbox

## REPL

```bash
stack ghci
stack ghci haskell-sandbox:exe:haskell-sandbox-CIS194
stack ghci haskell-sandbox:exe:haskell-sandbox-fir
```

```haskell
:?

-- Load module(s) and their dependents
:load
:l src/CIS194/W01/Introduction.hs
:l src/CIS194/W02/AlgebraicDataTypes.hs

-- Reload the current module set
:reload
:r

:type
:t
:t 3
:t (3 :: Int)

:q
```

## Test

```bash
sudo launchctl config user path "/usr/bin:/bin:/usr/sbin:/sbin:/Users/${USER}/.local/bin/"

clear; stack test
clear; stack test :haskell-sandbox-test-unit
clear; stack test :haskell-sandbox-test-integ
clear; stack test :haskell-sandbox-test-CIS194
clear; stack test :haskell-sandbox-test-CIS194 --test-arguments '--match "CIS194.WNN"'
```

## Build

```bash
clear; stack build
clear; stack build --test
clear; stack build :haskell-sandbox-fir
clear; stack build :haskell-sandbox-sec
```

## Run

```bash
clear; stack run haskell-sandbox-CIS194
clear; stack run haskell-sandbox-inspect
clear; stack run haskell-sandbox-fir
clear; stack run haskell-sandbox-sec
```

<https://www.seas.upenn.edu/~cis1940/spring13/>
<https://www.seas.upenn.edu/~cis1940/fall16/>

## Full test

```bash
clear; stack test
clear; stack build
clear; stack run haskell-sandbox-CIS194
clear; stack run haskell-sandbox-inspect
clear; stack run haskell-sandbox-fir
clear; stack run haskell-sandbox-sec
```
