#!/usr/bin/env ruby

# regular expression that will match the cases:
# MATCH CASES: htn, hbtn.
# IGNORED CASES EXAMPLES: hbbtn, hbbbtn
puts ARGV[0].scan(/hb?tn/).join
