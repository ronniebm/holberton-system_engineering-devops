#!/usr/bin/env ruby

# a script that uses regular expresion to search
# in an specific log file, and returns this output:
# [SENDER],[RECEIVER],[FLAGS]
puts ARGV[0].scan(/(?<=from:|to:|flags:)[^\]]*/).join(',')
