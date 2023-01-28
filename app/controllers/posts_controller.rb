class PostsController < ApplicationController
  
  def index
    @posts = Post.all 
  end

  def new
    @post = Post.new
  end
  
  
    def create
     @post = Post.new(params.require(:post).permit(:content, :post_id))
     if @post.save
      flash[:notice] = "新規投稿をしました！"
      redirect_to :posts
     else
      render "posts/show"
     end
    end
    
    
  def show
    @post = Post.find(params[:id])
   
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "投稿を更新しました"
      redirect_to :posts
    else
      render "edit"
    end
  end

  def destroy
    # パフォーマンスを上げるためattr_reader :postsを利用
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to :posts
  end

  private
  def post_params
    params.require(:post).permit(:content, :post_id)
  end
  
  # RetrievePostsクラスの定義を削除
    attr_reader :posts
    def initialize
      @post = []
    end
  end 

  

