# Log parser

## Overview

Log parser is a simple to parse a log file and prints following list

list 1:

list of webpages with most page views ordered from most pages views to less page views
e.g.:
/home 90 visits /index 80 visits etc...

list 2:

list of webpages with most
unique page views also ordered
e.g.:
/about/2 8 unique views
/index 5 unique views etc...

## Local Development

### Dependencies

Archimedes requires these dependencies to run:

- Ruby 2.6.6

Setup:

bundle install -> to install gem files in local

## TO Run App
Go to the lib/ folder

ruby parser #{file_name}



## Running Test Cases

rspec spec/

To run a specific test case
respec file_path
