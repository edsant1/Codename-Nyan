class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :destroy, :show]

  def new
    @article = Article.new
  end

  def index
    @article = Article.all
  end

  def show
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article, notice: "Article has been created"
    else
      render :new
    end

  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: "Article has been updated"
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to root_path, notice: "article has been deleted"
  end

  private

    def article_params
      params.require(:article).permit(:name, :description)
    end

    def set_article
      @article = Article.find(params[:id])
    end

end
