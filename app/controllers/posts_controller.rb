class PostsController < ApplicationController

  # Route defined for this index action
  # The URL being /posts
  def index
    # Fetch all the posts from the Post model
    # Save this to an instance variable

    @all_posts = Post.order('id DESC')


  end
  # After this index action executes, rails will load
  # the app/views.posts/index.html.erb
end
