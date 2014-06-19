require 'apiif/version'

require 'sinatra'

class Apiif::Server < Sinatra::Base
  get '/*' do
    path = File.join('.', request.path_info + '.json')
    halt 404 if !File.exists?(path)

    content_type :json
    File.read(path)
  end
end
