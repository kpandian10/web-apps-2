class PostsController < ApplicationController

  def index
    # find all Post rows
    @posts = Post.all
    # render posts/index view
  end

  def new
    # render posts/new view with new Post form
    #@post = Post.find_by({"id" => params["id"]})

  end

  def create
  #   # start with a new Post
    @post = Post.new
    @post["author"]=params["author"]
    @post["body"]=params["body"]
    @post["URL"]=params["URL"]
  #   # assign user-entered form data to Post's columns
  #   # save Post row
  #   # redirect user
    redirect_to "/posts"
  end

