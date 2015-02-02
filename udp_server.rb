#!/usr/bin/env ruby

require "socket"

s1 = UDPSocket.new
s1.setsockopt(Socket::SOL_SOCKET, Socket::SO_BROADCAST, true)
s1.bind("<broadcast>", 2001)

s2 = UDPSocket.new
s2.setsockopt(Socket::SOL_SOCKET, Socket::SO_BROADCAST, true)

1000.times do |i|

  s1.recvfrom(1)

  t = Time.now.to_f
  s2.send([t].pack('d'), 0, "<broadcast>", 2000)

  puts i
end

s1.close
s2.close
