require 'sinatra'

get '/*' do
  path = File.join('api', request.path_info + '.json')
  halt 404 if !File.exists?(path)

  content_type :json
  File.read(path)
end
