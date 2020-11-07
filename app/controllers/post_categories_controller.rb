class PostCategoriesController < ApplicationController
    def new
        @postcategory = PostCategory.new()
    end

    def create
    end

    private

    def postcategory_params
        params.require(:postcategory).permit(:category_id, :post_id)
    end
end
