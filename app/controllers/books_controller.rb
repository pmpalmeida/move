class BooksController < ApplicationController

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to user_path(current_user)
  end

end


 private


def book_params
  params.require(:book).permit(:photo1, :photo1_cache, :photo2, :photo2_cache, :photo3, :photo3_cache, :photo4, :photo4_cache, :photo5, :photo5_cache, :photo6, :photo6_cache, :photo7, :photo7_cache)
end
