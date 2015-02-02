#!/usr/bin/env ruby

require "socket"

s = UDPSocket.new

1000.times do
  s.bind (nil, 2001)
  t = Time.now.nsec.to_s
  msg = t1.size.to_s + t
  s.send (msg, 0, "localhost", 2000)
end
