#!/usr/bin/env ruby

# regular expression that must match
# a 10 digit phone number.
# VALID CASE: ./6-phone_number.rb 4155049898 | cat -e
# IGNORED CASE#1: ./6-phone_number.rb " 4155049898" | cat -e
# IGNORED CASE#2: ./6-phone_number.rb "415 504 9898" | cat -e
# IGNORED CASE#3: ./6-phone_number.rb "415-504-9898" | cat -e
puts ARGV[0].scan(/^\d{10}$/).join
