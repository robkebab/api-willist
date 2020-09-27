class TagsController < ApplicationController
    before_action :find_tag, only: [:show, :update, :destroy]

    def index
        tags = Tag.all

        render json: tags
    end

    def show
        render json: @tag
    end

    def create
        tag = Tag.new(tag_params)

        if tag.save
            render json: tag
        else
            render json: {"error": "the tag could not be created"}
        end
    end

    def update
        if @tag.update(tag_params)
            render json: @tag
        else
            render json: {"error": "couldn't update that tag"}
        end
    end

    def destroy
        if @tag
            @tag.destroy
            render json: {"message": "tag deleted"}
        else
            render json: {"error": "could not find tag number #{params[:id]}"}
        end
    end

    private
        def find_tag
            @tag = Tag.find(params[:id])
        end

        def tag_params
            params.require(:tag).permit(:name)
        end
end
