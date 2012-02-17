#!/bin/bash

rex tokens.rex -o lexer.rb
racc grammar.y -o parser.rb
./lebowski -e='print("foo")'


