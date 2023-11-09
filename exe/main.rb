require 'rainbow'
require_relative '../lib/terminal_game/commands'

def write_file msg
  file = File.new "data.txt", "w"
  file.syswrite msg
  file.close
end

write_file "Hello World !"
puts "File written"

Commands.presentation_page
puts "Create a character before playing ! or list available characters."

while true
  puts "Enter a new command"
  command = gets
  case command
  when "hello\n"
    Commands.create_character
  else
    puts "The #{command} command does not exist"
  end
end
