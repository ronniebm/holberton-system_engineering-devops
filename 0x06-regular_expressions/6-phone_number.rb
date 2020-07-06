#!/usr/bin/env ruby

# regular expression that must match
# a 10 digit phone number.
# VALID CASE: ./6-phone_number.rb 4155049898 | cat -e
# IGNORED CASE#1: ./6-phone_number.rb " 4155049898" | cat -e
# IGNORED CASE#2: ./6-phone_number.rb "415 504 9898" | cat -e
# IGNORED CASE#3: ./6-phone_number.rb "415-504-9898" | cat -e

string = ARGV[0]
# Ensure the number consists entirely of seven digits, nothing else.
string.scan(/\A\d{10}/) { |match| print "#{match}" }
