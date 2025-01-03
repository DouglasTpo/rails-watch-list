class BookmarksController < ApplicationController

    
    def new
        @bookmark = Bookmark.new
    end

    def create
       @bookmark = Bookmark.new(bookmark_params)
         @bookmark.list = list
         if bookmark.save
            redirect_to list_path(@list)
         end

    end


    private

    def bookmark_params
        params.require(:bookmark).permit(:comment, :movie_id)
    end

end