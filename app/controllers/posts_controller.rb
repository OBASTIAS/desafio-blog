class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
  end


  def create
    @post = Post.create(
      title: params['title'],
      content: params['content'],
      image: params['image']
    )
    @post.content.gsub!("spoiler"," ")
    # endif @post.save
      #redirect_to root_path
    #end
    @post.save
      redirect_to root_path
  end
end
