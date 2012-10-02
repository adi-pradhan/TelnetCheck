# Telnet Check
# Adi Pradhan

puts "\n\n------------------------------\nadi\nOct 2012\nTELNET CHECK\n------------------------------\n\n\n"

begin
require 'net/telnet'
rescue => error
	puts %w{there was a problem loading the net/telnet lib }
end

HostsArray = [{'host'=> 'localhost','port'=> 18000},
			  {'host'=> 'www.google.com', 'port'=> 80} ,
			  {'host'=> 'localhost', 'port'=> 18001} 
			  ]
				
HostsArray.each do |pair|
	puts 'the host is : '  + pair['host'].to_s + "\n"
	begin
		Net::Telnet::new("Host" => pair['host'], "Port" => pair['port'], "Timeout" => 10 )
	rescue => e
		puts 'Could not connect to ' + pair['host'] + "\n"
	end
end

puts "\n\n\nPress ENTER to exit"; ans = gets.chomp

