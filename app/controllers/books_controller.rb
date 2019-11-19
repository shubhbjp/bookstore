class BooksController < ApplicationController
  
  #will be called for the page of load with new url
  def new
    
  end

  # will be called for the form submission of new url
  def create
    @article = Book.new(article_params)
    if @article.save
      flash[:success] = "New Book Added Successfully"
    else
      flash[:error] = "New Book cannot be added"
    end
    redirect_to books_path
  end

  def show
    #@articles = Article.all
  end

  def edit
    @article = Article.find(params[:id]) # to get the default data in the edit form, when the form opens
  end
  
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = "Article Updated Successfully"
    else
      flash[:error] = "Article not updated Successfully"
    end
    redirect_to articles_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:name, :age)
  end
end
