class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])
		if @post.save
			redirect_to posts_path, :notice => "Successfully created!"
		else
			render "new"
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update
			redirect_to @post
		else
			render "edit"
		end
	end

	def destory
		@post = Post.find(params[:id])
		@post.destory
		redirect_to posts_path
	end

end
