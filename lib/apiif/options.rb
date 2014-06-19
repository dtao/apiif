require 'optparse'

Apiif::OPTIONS = {
  :port => 8080,
  :root => Dir.pwd
}

parser = OptionParser.new do |opts|
  opts.banner = 'Usage: apiif [options]'

  opts.on '--port [PORT]', Integer, 'HTTP Server port (default: 8080)' do |port|
    Apiif::OPTIONS[:port] = port
  end

  opts.on '--root [PATH]', 'Directory root (default: current directory)' do |path|
    Apiif::OPTIONS[:root] = path
  end
end

parser.parse!
