require 'sinatra/base'
require_relative 'data_mapper_setup'

class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  # get '/new_link' do
  #   erb :'links/new_link'
  # end

  post '/new_link' do
    Link.create(:title => params[:title], :url => params[:url])
    erb :'links/new_link'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
