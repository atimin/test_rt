#!/usr/bin/env ruby

1000.times do
  t1 = Time.now.to_f
  (0..1000).each { |i| i**i }
  t2 = Time.now.to_f - t1

  puts t2
end
