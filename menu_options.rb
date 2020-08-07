

class MenuOption
    attr_reader :display, :input, :command

    def initialize(display, input, command)
        @display = display
        @input = input
        @command = command
    end

    def to_s
        "#{@input}.......#{@display}"
    end


end