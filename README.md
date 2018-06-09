# TODO-CONKY

## What?
 a simple conky todo list :scroll:

## Why?
    1.to remember what to do :smiley:
    1.to have it on desktop in front of :eyes: 

## Depenedency
    1.conky
    1.bash

## How to install?
    1. The make way :sunglasses:
    > make install

    1. the manual way :innocent:
    ```
    copy todo to .conky folder in your home
    echo "alias todo=\"$Home/.conky/todo/todo.sh\"" >> .bashrc
    ```

## How to use?
    1.to add todo use
    > todo add "task 1"
    1.to remove todo number 7 use
    > todo remove 7 
    1.to remove all use
    > todo remove all
