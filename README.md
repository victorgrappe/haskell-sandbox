# haskell-sandbox

```bash
stack build
stack build --test
stack run
stack ghci
stack ghci haskell-sandbox:exe:haskell-sandbox-fir


clear; stack test
clear; stack test :haskell-sandbox-test-unit
clear; stack test :haskell-sandbox-test-cis192
clear; stack test :haskell-sandbox-test-integ

claer; runhaskell Spec.hs -m "CIS 192 - Week 01"


clear; stack build
clear; stack build --test
clear; stack build :haskell-sandbox-fir
clear; stack build :haskell-sandbox-sec

clear; stack run haskell-sandbox-inspect
clear; stack run haskell-sandbox-fir
clear; stack run haskell-sandbox-sec
```

<https://www.seas.upenn.edu/~cis1940/spring13/>
<https://www.seas.upenn.edu/~cis1940/fall16/>
