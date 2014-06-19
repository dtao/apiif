require 'optparse'

Apiif::OPTIONS = {
  :port => 8080
}

parser = OptionParser.new do |opts|
  opts.banner = 'Usage: apiif [options]'

  opts.on '--port [PORT]', Integer, 'Specify server port (default: 8080)' do |port|
    Apiif::OPTIONS[:port] = port
  end
end

parser.parse!
