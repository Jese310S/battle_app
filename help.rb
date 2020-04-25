require 'optparse'


options = {}

OptionParser.new do |parser|
    parser.banner = "Usage: help.rb #{options}"

    parser.on("-h", "--help", "show this help message") do ||
    puts parser
    end
end

end.parse!