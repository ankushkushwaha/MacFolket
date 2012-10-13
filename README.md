macfolket
=========

A Swedish - English dictionary for Mac OS X


Building
--------

- Clone this git repository
- Download Apples [Dictionary Development Kit](https://developer.apple.com/downloads/) (The packages is called "Auxiliary Tools for Xcode")
- Copy the "Dictionary Development Kit" into the repo
- make sure you have $REPOSITORY/Dictionary\ Development\ Kit/bin in your $PATH
- make
- Optional make validate (you need to install jing for that)
- make install


Caveats
-------

- Right now only Swedish -> English is supported
- To much information is displayed in pop-up mode
- Only the first entry is displayed in pop-up mode instead of all (e.g. "boken" shows only "beech")