class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new

    if @article.save
      flash[:success] = 'Successfully created article.'
      redirect_to @article
    else
      render 'new'
      flash[:fail] = 'Please fill in all fields.'
    end
  end

  def create
    @article = Article.new(article_params)
 
    if @article.save
      flash[:success] = 'Successfully created article.'
      redirect_to @article
    else
      render 'new'
      flash[:fail] = 'Please fill in all fields.'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
      flash[:success] = 'Successfully created article.'
    else
      render 'edit'
      flash[:fail] = 'Please fill in all fields.'
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
  
end
