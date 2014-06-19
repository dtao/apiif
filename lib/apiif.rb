require 'apiif/version'

require 'sinatra'

class Apiif::Server < Sinatra::Base
  def serve_file(path, verb)
    path = File.join('.', path, "#{verb}.json")
    halt 404 if !File.exists?(path)

    content_type :json
    File.read(path)
  end

  ['get', 'put', 'post', 'delete'].each do |verb|
    self.send verb, '/*' do
      serve_file request.path_info, verb
    end
  end
end
