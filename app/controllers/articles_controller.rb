class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def show 
    #byebug
    #@article = Article.find(params[:id])
  end

  def index 
    @articles = Article.all
  end

  def new 
    @article = Article.new
  end

  def edit 
    #@article = Article.find(params[:id])
  end

  def create 
    #byebug
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was creqetd successfully."
      redirect_to @article 
    else
      render 'new'
    end
    #render plain: @article.inspect
    ## redirect_to article_path(@article) ## commonly used
    ## redirect_to @article  ## shortend path.
    #render plain: params[:article]
  end

  def update
    #@article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = "Article was updated successfully."
      redirect_to @article 
    else
      render 'edit'
    end
  end

  def destroy
    # @article = Article.find(params[:id])
    if @article.destroy
      flash[:notice] = "Article was deleted successfully."
      redirect_to @article 
    end
  end


  private 

  def set_article 
    @article = Article.find(params[:id])
  end

  def article_params 
    params.require(:article).permit(:title, :description)
  end

end
