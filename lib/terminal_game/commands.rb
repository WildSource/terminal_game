RELATIVE_PATH = "assets/presentation.txt"

def _clear_screen
    system "clear"
end

def _get_file_path
  file_path = File.join __dir__, RELATIVE_PATH
end

def _get_file_content
  file = File.open _get_file_path
  file_content = file.read
  file.close
  file_content
end

def _display_classes
  puts "Choose between Warrior, Wizard, Ranger and Healer."
end

module Commands
  def Commands.presentation_page
    _clear_screen
    file = _get_file_content
    puts file
  end

  def Commands.create_character
    _clear_screen
    _display_classes
    class_choice = gets
    puts "your class choise is " + class_choice
  end
end


