# Telnet Check
# Adi Pradhan
require './hosts_check'
require './../net/telnet'
puts "\n\n------------------------------\nadi\nOct 2012\nTELNET CHECK\n------------------------------\n\n\n"

begin
rescue => error
	puts %w{there was a problem loading the net/telnet lib }
end

puts "What format would you like to input the hostnames and ports in ?"
puts "(1) csv file 			==> host,port"
puts "(2) type values 		==> host,port"
puts "(3) use dummy values"
puts "\n"
choice = gets.chomp
case choice.to_s
when '1'
	
when '2'
	
when '3'
	hosts_check
end
