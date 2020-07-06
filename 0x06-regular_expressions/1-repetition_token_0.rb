#!/usr/bin/env ruby

# regular expression that will match the cases:
# MATCH CASES: hbttn, hbtttn, hbttttn, hbtttttn.
# IGNORED CASES EXAMPLES: hbn, hbtn, hbttttttn.
puts ARGV[0].scan(/hbt{2,5}n/).join
