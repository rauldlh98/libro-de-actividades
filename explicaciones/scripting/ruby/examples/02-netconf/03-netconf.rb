#!/usr/bin/env ruby
# Target:
# * Show current IP configuration
# Changes:
# * Execute command wiht system(command)
# * Filter only real IP with grep and grep -v
# * Save command output using %x[command]

ip = %x[ip a | grep 'inet ' | grep -v 'host lo']
puts "[INFO] Showing network configuration"
puts "  IP : #{ip}"
