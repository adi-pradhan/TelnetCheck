# Telnet Check
# Adi Pradhan

puts "\n\n------------------------------\nadi\nOct 2012\nTELNET CHECK\n------------------------------\n\n\n"

begin
require 'net/telnet'
rescue => error
	puts %w{there was a problem loading the net/telnet lib }
end

# change the load and use a file. Probably need to regex as well.
HostsArray = [{'host'=> 'localhost','port'=> 18000},
			  {'host'=> 'www.google.com', 'port'=> 80} ,
			  {'host'=> 'localhost', 'port'=> 18001} 
			  ]
				
HostsArray.each do |pair|
	puts 'HOST: '  + pair['host'].to_s + "\n"
	puts 'PORT: ' + pair['port'].to_s + "\n\n"
	begin
		Net::Telnet::new("Host" => pair['host'], "Port" => pair['port'], "Timeout" => 10 )
		# if there is no exception then the telnet was successful.
	rescue => e
		# an exception should be noted as a host that could not be reached due to firewall.
		puts pair['host'].to_s + ":" + pair['port'].to_s + " -- " + e.to_s
	end
	puts "\n"
end

# need to collect output. Maybe as an HTML :P , that would be nice.

puts "\n\n\nPress ENTER to exit"; ans = gets.chomp

