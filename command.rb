class Command

    def execute
        throw "#{self.class} did not setup the execute method"
    end
end