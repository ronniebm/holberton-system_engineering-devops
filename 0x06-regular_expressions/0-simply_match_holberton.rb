#!/usr/bin/env ruby

# using string scan method to find words into a string.
# http s://ruby-doc.org/core-2.5.1/String.html#method-i-scan
string = ARGV[0]
string.scan(/Holberton/) { |match| print "#{match}" }
