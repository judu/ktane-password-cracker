# KTANE password cracker

This is a small project I wrote essentially to practice some Haskell.

It aims at find out which word enter in the "password" module of Keep Talking And Nobody
Explodes.

I want to make it as haskellish and elegant as possible, so issues welcome. If you think
some functions are not elegant enough, or do to exploit the full possibilities of Haskell,
please let me know! I'm here to learn.

## How to install

Needs haskell's Stack: (https://docs.haskellstack.org/en/stable/README/).

```
git clone https://github.com/judu/ktane-password-cracker.git
cd ktane-password-cracker
stack setup
stack install
```

## How to use

You will get two executables:

 - ktane-password-full: Asks you for all the letters then gives you the password
 - ktane-password-three: Asks you for the 1st, 3rd and 5th letters and filters down the
   passwords from there.

The former is the first I did. It may disappear in the future. The latter is quite useful,
though. Might find the right word with just 1st and 3rd letters.
