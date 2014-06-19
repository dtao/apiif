require 'apiif/version'
require 'apiif/options'

require 'sinatra'

class Apiif::Server < Sinatra::Base
  set :port, Apiif::OPTIONS[:port]

  def serve_file(path, verb)
    path = File.join(Apiif::OPTIONS[:root], path, "#{verb}.json")

    if !File.exists?(path)
      halt 405 if Dir.exists?(File.dirname(path))
      halt 404
    end

    content_type :json
    File.read(path)
  end

  ['get', 'put', 'post', 'delete'].each do |verb|
    self.send verb, '/*' do
      serve_file request.path_info, verb
    end
  end
end
