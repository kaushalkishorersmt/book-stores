class BooksController < ApplicationController
  def index
    response = RestClient.get 'http://localhost:3000/api/v1/books'
    if response.code == 200
      @books = JSON.parse(response.body)
    else
      @books = []
    end
  end
end
