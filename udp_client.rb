#!/usr/bin/env ruby

require "socket"
require "time"

s1 = UDPSocket.new 
s2 = UDPSocket.new 
s1.setsockopt(Socket::SOL_SOCKET, Socket::SO_BROADCAST, true)
s2.setsockopt(Socket::SOL_SOCKET, Socket::SO_BROADCAST, true)
s2.bind("<broadcast>", 2000)

1000.times do |i|

  t1 = Time.now.to_f
  s1.send("1", 0, "<broadcast>", 2001)

  t2 = s2.recvfrom(8)[0].unpack('d').first
  puts ("%1.9f" % (t2 - t1))

  sleep(0.01)
end

s1.close
s2.close
