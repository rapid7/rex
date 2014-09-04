# encoding: utf-8

require 'fileutils'
 
task :build => :update do
	Rake::Task['clean'].execute
	puts "[*] Building rex.gemspec"
	system "gem build rex.gemspec &> /dev/null"
end
 
task :release => :build do
	puts "[*] Pushing rex to rubygems.org"
	system "gem push rex-*.gem &> /dev/null"
	Rake::Task['clean'].execute
end

task :clean do
	system "rm *.gem &> /dev/null"
end

task :update do
	
	begin
	
	version = ""
	
	print "[*] Updating rex.gemspec"
	File.open("rex.gemspec.1", "w+") do |output|
		File.open("rex.gemspec", "r") do |input|
			while (line = input.gets)
				
				if line =~ /^VERSION = (.*)$/
					version = $1.chop.gsub("\"",'').split(".")
					version[2] = version[2].to_i + 1
					version = version.join(".")

					line = "VERSION = \"#{version}\"\n"
				else
					line = line
				end
			
				output.write line
			end
		end
	end

	system "mv rex.gemspec.1 rex.gemspec"

	rescue ::Exception
		$stderr.puts "[-] Error: #{$!.class} #{$!} #{$!.backtrace}"
	end
	
	# Twitter tweet for the update, I am that lazy yes
	puts "[*] Updated rex to v#{version} based on the latest Metasploit rex library. Available in rubygems."
end
