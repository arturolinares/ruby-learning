#!/usr/bin/env ruby

unless ARGV.length == 2
  puts 'Usage: cesar.rb <displacement> <message>'
  exit
end

lower = [* 'a'..'z']
caps = [* 'A'..'Z']

displacement = ARGV[0].to_i
message = ARGV[1]

displaced_lower = lower.rotate(displacement)
displaced_caps = caps.rotate(displacement)

encrypted = message.chars.map do |char|
  if lower.include? char
    displaced_lower[lower.index char]
  elsif caps.include? char
    displaced_caps[caps.index char]
  else
    char
  end
end

puts encrypted.join
