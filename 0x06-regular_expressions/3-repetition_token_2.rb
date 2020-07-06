#!/usr/bin/env ruby

# regular expression that will match the cases:
# MATCH CASES: hbtn, hbttn, hbtttn, hbttttn.
# IGNORED CASES EXAMPLES: hbn, hbtttttn.
string = ARGV[0]
string.scan(/hbt{1,4}n/) { |match| print "#{match}" }
