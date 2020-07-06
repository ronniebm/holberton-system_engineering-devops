#!/usr/bin/env ruby

# regular expression that will match the cases:
# MATCH CASES: hbn, hbtn, hbttn, hbtttn, hbttttn.
# IGNORED CASES EXAMPLES: hbon.
string = ARGV[0]
string.scan(/hbt{0,4}n/) { |match| print "#{match}" }
