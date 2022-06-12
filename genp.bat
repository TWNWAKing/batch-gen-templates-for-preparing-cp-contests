@echo off
mkdir %1
cd %1
type template_directory > %1.cpp
:: For Sublime Text
:: subl %1.cpp
:: For VSCode
:: code %1.cpp
:: For vim
:: vim %1.cpp
:: etc.
