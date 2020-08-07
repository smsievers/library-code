
class Menu
attr_reader :options
    def initialize(options = [], showback = false)
        @options = options
        @showback = showback
    end
    def display_options
        @options.each do |o|
            puts o
        end
        input = gets.chomp.upcase
        
        executed = false
        options = @options
        if @showback
            options.push(MenuOption.new("Go Back", "b", GoBackCommand.new))
        end
        @options.each do |o|
            if o.input == input

                # if your commmand is a submenu (see delete_book_menu_command), use return true (see delete_book_command) to exit that menu and return back to main menu or parent menu

                leave = o.command.execute
                if leave == true
                    return
                end
                executed = true
            end 
        end

        if input.downcase == "b" && @showback && executed
            return
        end

        if !executed
            puts "Invalid input"
        end

        display_options
    end

    def add_option(option)
        @options.push(option)
    end
end