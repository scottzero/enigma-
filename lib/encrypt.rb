require './test/test_helper'

read_file, write_file = ARGV
message = File.open(read_file, "r")
encrypted = File.open(write_file, "w")
encryption = Enigma.new.encrypt(message.read)
encrypted.write(encryption[:encryption])
encrypted.close
puts "Created #{write_file} with the key #{encryption[:key]} and date #{encryption[:date]}"
