# haskell-sandbox

```bash
stack build
stack build --test
stack run
stack ghci


stack test
stack test haskell-sandbox:haskell-sandbox-test-unit
stack test haskell-sandbox:haskell-sandbox-test-integ

clear; stack build
clear; stack build --test
clear; stack build :haskell-sandbox-fir
clear; stack build :haskell-sandbox-sec

clear; stack run haskell-sandbox-fir
clear; stack run haskell-sandbox-sec
```
