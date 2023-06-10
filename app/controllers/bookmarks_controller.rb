class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmark = Bookmark.all
  end

  def show
    @bookmark = Bookmark.new
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.list.save
      redirect_to list_path(@list)
    else
      render "new"
  end

  def update
    if @bookmark.update(bookmark_params)
      redirect_to bookmark_path(@bookmark)
    else
      render "edit"
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to list_path(@bookmark)
  end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end


  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
