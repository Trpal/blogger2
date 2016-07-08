class ArticlesController < ApplicationController
  include ArticlesHelper
  def create
    @article = Article.new(article_params)
    @article.save

    redirect_to article_path(@article)
  end

  def destroy

  end
  def index
      @articles = Article.all
  end
  def new
    @article = Article.new
  end
  def show
    @article = Article.find(params[:id])
  end
end