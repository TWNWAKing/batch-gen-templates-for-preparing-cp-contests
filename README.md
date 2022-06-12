# batch-gen-templates-for-preparing-cp-contests

A small tool which generates a batch of templates for each problem automatically while preparing for a competitive programming contest.

**Update:** Now user can generate a folder for one single problem. See `genp.bat` for more details.

## Introduction

This is a convenient tool for setting up files before a programming contest using simple batch command.

By inputting in the **contest name** and the **last character of all problems**, it auto generates a folder with the desired templates for each problem in separate folder, from `A` to the **last character of all problems**.

For example, if I input `Codeforces Round #790 (Div. 4)` and `H`, it generates a folder named `Codeforces Round #790 (Div. 4)`. Inside the folder there are folders from A to H and each folder has a files "X.cpp", X = folder name = problem name.

Here is the directory tree of the example mentioned above.

```
└─Codeforces Round #790 (Div. 4)
    ├─A
    │      A.cpp
    │
    ├─B
    │      B.cpp
    │
    ├─C
    │      C.cpp
    │
    ├─D
    │      D.cpp
    │
    ├─E
    │      E.cpp
    │
    ├─F
    │      F.cpp
    │
    ├─G
    │      G.cpp
    │
    └─H
            H.cpp
```

## Preparation

1. Download `gen.bat`.

2. Edit the `gen.bat`*: Replace all `template_directory` with `the local directory of your template file`.

3. Add the directory of `gen.bat` to the environment variable, now you can execute it everywhere!

## User Guide

1. Open terminal and change the directory to the folder where you want to start a contest.

2. Execute the tool by typing `gen`.

3. You'll see `Enter contest name: ` on the screen, now you can type the contest name **without quotes**.

4. Now you'll see `Enter the character of final problem:(A to Z) `, you need to type a letter from `A` to `Z`. If you input any invalid character, the tool with delete the wrong directory you just created.

5. Enjoy! 

## (New Feature) What if I want to add an extra problem for this contest or the problem name isn't a single character from A to Z?

Now I updated a new tool: `genp.bat` for preparing a single problem.

### Preparation

1. Download `genp.bat`.

2. Edit the `genp.bat`*: Replace all `template_directory` with `the local directory of your template file`.

3. Add the directory of `genp.bat` to the environment variable, now you can execute it everywhere!

### User Guide

Assume that we are adding `example_problem` to `example_contest`.

1. Open terminal and change the directory to the folder `example_contest`.

2. Execute the tool by typing `genp`. However, in tool `genp` we need to type the problem name in advance, see 3. for more details.

3. For `example_problem`, we need to execute the `genp` by executing the following command: `genp "example_problem"`. **Notice that quotes for problem name are necessary**

4. Now you'll have a new folder `example_problem` with `example_problem.cpp` under `example_contest`, as desired.

Here is a possible directory tree:

```
└─example_contest
    └─example_problem
        example_problem.cpp
```

5. (Extra) If you want to open the cpp file with VSCode, Sublime Text, Vim, etc you just generated automatically, just modify `genp.bat`. Some samples are given in the file.
For example, VSCode version of `genp.bat` would be like:

```bat
@echo off
mkdir %1
cd %1
type template_directory > %1.cpp
code %1.cpp
```

6. Enjoy!
## TODO

- Fetch the number of the problems of a contest and sample test cases automatically using API, like Codeforces.

- ~~Create 1 problem per folder.~~ (Done.)

- Write the batch file more "functionally", instead of writing the code by enumerating variables violently, which is a bad habit. (Maybe I should use python for this tool...)

- ~~Write a program which generates a folder for single problem.~~ (Done, see `genp.bat`)