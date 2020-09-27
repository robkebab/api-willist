class LinksController < ApplicationController
    before_action :find_link, only: [:show, :update, :destroy]

    def index
        links = Link.all

        render json: links
    end

    def show
        render json: @link
    end

    def create
        link = Link.new(link_params)

        if link.save
            render json: link
        else
            render json: {"error": "the link could not be created"}
        end
    end

    def update
        if @link.update(link_params)
            render json: @link
        else
            render json: {"error": "couldn't update that link"}
        end
    end

    def destroy
        if @link
            @link.destroy
            render json: {"message": "link deleted"}
        else
            render json: {"error": "could not find link number #{params[:id]}"}
        end
    end

    private
        def find_link
            @link = Link.find(params[:id])
        end

        def link_params
            params.require(:link).permit(:text, :url, :course_id)
        end
end
