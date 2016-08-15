$LOAD_PATH << "."

require 'converter'
require 'sinatra'

get '/' do
  input = params['kj'].to_i

  Converter.kj_to_cals(input).to_s
end

get '/form' do
  <<-HTML
    <form method=GET action='/'>
      <input name=kj>
    </form>
  HTML
end

  get '/form_other' do
    <<-HTML
      <form method=POST action='/form_other_post'>
        <input name=kj>
      </form>
    HTML
end

post '/form_other_post' do
  input = params['kj'].to_i

  Converter.kj_to_cals(input).to_s
end
