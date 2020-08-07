class CsvClient

    def initialize(file)
        @file = file
    end

    def read_file
        File.readlines(@file)
    end

    def append(line)
        File.open(@file, "a") do |file|
            file.puts line
        end
    end

    def write_to_file(lines)
        File.open(@file, "w") do |file|
            file.puts lines
        end
    end

    def delete_line(line)
        newlines = []
        read_file.each do |l| 
            if l != line
                newlines.push(l)
            end
        end
        write_to_file(newlines)
    end
end