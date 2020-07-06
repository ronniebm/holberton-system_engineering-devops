#!/usr/bin/env ruby

# regular expression that will match the cases:
# MATCH CASES: hbtn, hbttn, hbtttn, hbttttn.
# IGNORED CASES EXAMPLES: hbn, hbtttttn.
puts ARGV[0].scan(/hbt+n/).join
