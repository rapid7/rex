#!/usr/bin/env ruby

#Jacob Hammack
#Jacob.Hammack@hammackj.com
#An Example for connecting to a Windows Share.

require 'rubygems'
require 'rex'

host = ARGV[0]
username = ARGV[1]
password = ARGV[2]
#hostname is interesting, new windows require the actual hostname of the box 
#to connect so this may not work on 7
hostname = "*SMBSERVER" 
domain = ""

begin
	sock = Rex::Socket::Tcp.create('PeerHost' => host, 'PeerPort' => 139)
	smb = Rex::Proto::SMB::SimpleClient.new(sock)

	puts "[*] Logging in to #{host}"
	smb.login(hostname, username, password, domain)
	smb.connect("Admin$")
		
	if smb.client.auth_user
		puts "[*] Connected to Admin$"
	else
		puts "[!] Unable to Connect to Admin$"
	end
	
	sock.close
rescue Exception => e
	puts "#{e.message}\n#{e.backtrace}\n\n"
end
