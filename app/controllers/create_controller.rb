class CreateController < ApplicationController
  # before_action :require_no_authentication
  # before_action :authenticate_xuser!
  # prepend_before_filter :require_no_authentication, :only => [ :savePost ]
  # skip_before_action :require_no_authentication
  # prepend_before_filter :authenticate_scope!, :only => [:edit, :update, :destroy]

  def createPost



  end


  def savePost
    uploader = AvatarUploader.new
    if params[:pic] != nil
    file = params[:pic].tempfile
    fileName = Date.new(2009,11,26).to_time.to_i.to_s + ".jpg"
    # uploader.store!(file)
    File.open(Rails.root.join('public', 'images', fileName.to_s), 'wb') do |f|
      f.write(file.read)
    end
  end
    base_uri = 'https://uzhgoroddevgroup.firebaseio.com/'

    firebase = Firebase::Client.new(base_uri)
    wishText = params[:fullText]
    name = params[:username]
    response = firebase.push("posts", { :fullText => wishText, :name => name, :fileName => fileName })
  end
end
