#!/usr/bin/env ruby

# regular expression that will match the cases:
# hbttn, hbtttn, hbttttn, hbtttttn.
string = ARGV[0]
string.scan(/hbt{2,5}n/) { |match| print "#{match}" }
