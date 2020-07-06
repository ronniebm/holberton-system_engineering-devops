#!/usr/bin/env ruby

# regular expression that will match the cases:
# MATCH CASES: hbttn, hbtttn, hbttttn, hbtttttn.
# IGNORED CASES EXAMPLES: hbn, hbtn, hbttttttn.
string = ARGV[0]
string.scan(/hbt{2,5}n/) { |match| print "#{match}" }
