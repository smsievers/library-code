require_relative 'command'

class ExitProgramCommand < Command
    def execute
        exit
    end
end