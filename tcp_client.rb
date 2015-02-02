#!/usr/bin/env ruby

require "socket"
require "time"

times = []
1000.times {
  t1 = Time.now.nsec
  s = TCPSocket.new 'localhost', 2000
  t2 = s.gets.to_i
  times << t2-t1
  s.close
}

File.open('tcp_timing.txt', 'w') do |f|
  times.each { |t| f << t.to_s + "\n" }
end
