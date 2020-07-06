#!/usr/bin/env ruby

# regular expression that will match the cases:
# MATCH CASES: hbn, hbtn, hbttn, hbtttn, hbttttn.
# IGNORED CASES EXAMPLES: hbon.
puts ARGV[0].scan(/hbt*n/).join
