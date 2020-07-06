#!/usr/bin/env ruby

# regular expression that will match the string case:
# h?n (where '?' can be any single character)
string = ARGV[0]
string.scan(/h[0-9a-zA-Z_]n/) { |match| print "#{match}" }
