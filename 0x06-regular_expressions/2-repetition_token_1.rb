#!/usr/bin/env ruby

# regular expression that will match the cases:
# MATCH CASES: htn, hbtn.
# IGNORED CASES EXAMPLES: hbbtn, hbbbtn
string = ARGV[0]
string.scan(/hb{0,1}tn/) { |match| print "#{match}" }
