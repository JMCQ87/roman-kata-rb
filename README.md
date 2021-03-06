### Roman Numeral Converter

This is a simple Roman numeral converter for integers, which happens to be one
of the examples of "Coding Katas" that Robert "Uncle Bob" Martin likes to mention
in his books and talks on the software craft, hence the project name.

## Background

The Roman numeral notation represents integer numbers with letters that have
specific values. [Wikipedia](https://en.wikipedia.org/wiki/Roman_numerals) gives a
fairly detailed explanation on different variations and extensions of the notation
system. For the sake of this project, a simple a version that covers numbers in
the range from 1 to 3999 is considered within scope, i.e. the Vinculum notation
for numbers larger or equal to 4000 or Medieval extensions to the notation system
such as "N" for representing zero are not considered.

## Implementation

To make use of Ruby's OOP features, the conversion is implemented as a method for
instances of the Integer class. As no new separate Roman numeral (sub)class is
implemented here, the method is named "to_roman_s", analogue to the string
conversion with "to_s" and other conversion methods.

## Project & Test Setup

This project uses Ruby 2.6.3 and Rspec as the testing framework. With RVM, you can
install this version with `rvm install 2.6.3` and create the gemset with
`rvm gemset create roman-kata`.

1. Install bundler with `gem install bundler`
2. Use `bundle` to install the Gems
3. Run the tests with `rspec`
