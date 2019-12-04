require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/add_form' do
    erb :'bookmarks/add_form'
  end

  post '/add_bookmark' do
    Bookmark.create params['url']
    redirect '/bookmarks'
  end

  run! if app_file == $0

end
