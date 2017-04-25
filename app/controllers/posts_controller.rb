class PostsController < ApplicationController
  def read
    @array = [1,2,3,4,5]
    base_uri = 'https://uzhgoroddevgroup.firebaseio.com/'

    firebase = Firebase::Client.new(base_uri)

    @response = firebase.get("posts", {})
    @array = @response.body
  end
end
