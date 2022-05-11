# batch-gen-templates-for-cp

A tool which generates a batch of templates for each problem automatically in competitive programming

## Intro

This is a convenient tool for setting up files before a programming contest using simple batch command.

By inputting in the **contest name** and the **last letter of the problems**, it auto generate a folder and the desired templates.

For example, if I input **Codeforces Round #790 (Div. 4)** and **H**, it generates a folder named "Codeforces Round #790 (Div. 4)" and inside there are folders frome A to H and each folder has a files "X.cpp", X = folder name.

## Preparation

1. Download these files.

2. Edit the **gen.bat**: Replace **template_directory** with the directory of your template file.

3. Add the directory of gen.bat to the **environment variable**.

## User Guide

1. Open a terminal and change the directory to the folder where you want to start a contest.

2. Type gen and then follow the instructions.

3. Enjoy! However, if you input some unknown letter for the last letter of the problems, it will delete the contest directory automatically which it just create.

## To do list

- Fetch the number of the problems of a contest automatically.

- ~~Create 1 problem per folder.~~ (Done)

- Write the batch file more "functionally", instead of wirting them by enumerating variables violently, which is a bad habit.

