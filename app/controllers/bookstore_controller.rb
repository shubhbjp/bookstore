require 'redis'
class BookstoreController < ActionController::Base

  def index
    @books = Book.all
    search_list
  end

  def search_list
    if params['key'].nil? || params['key'].empty?
      return
    else
      @data = []
      redis = Redis.new(host: "localhost")
      redis_key = "bookstore:" + params['key']
      key_exists = redis.exists(redis_key)
      if key_exists
        @data = JSON.parse(redis.get(redis_key))
      else
        @data = Book.search(params['key'])
        redis.set(redis_key, @data.to_json)
      end
    end
  end

end
