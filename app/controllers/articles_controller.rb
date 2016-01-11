class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

   def show
    @articles = Article.all
    @un_article = Article.find(params[:id])
  end
  
  def create
  	Article.create title: params[:title], description: params[:description]
    redirect_to "/articles/index"
  end

  def update
    @un_article = Article.find(params[:id])
    @un_article.title = params[:title]
    @un_article.save
    redirect_to "/articles/#{params[:id]}"
  end

  def destroy
    @un_article =Article.find(params[:id])
    @un_article.destroy
    redirect_to "/articles"
  end

end