class Demo < Grape::API
  format :json
  prefix :api

  desc 'Returns a 304, but raise an error'
  get '/demo' do
    status 304
  end
end
