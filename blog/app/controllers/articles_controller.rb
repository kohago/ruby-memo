class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    #render plain: params[:article].inspect
    @article = Article.new(params.require(:article).permit(:title, :text))
    if @article.save
    #go to show
      redirect_to @article
    else
      #to display @article at new view
      # render do things in one request
      # redirect_to will be another request
      render 'new'
    end
  end

  def show
    #@ is instance variable, rails will send instance variable to view
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(params.require(:article).permit(:title, :text))
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

end
