#!/usr/bin/env ruby

# regular expression that only
# matchs capital letters.
puts ARGV[0].scan(/[A-Z]+/).join
