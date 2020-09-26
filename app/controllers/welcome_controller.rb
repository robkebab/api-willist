class WelcomeController < ApplicationController
    def index
        render json: "Welcome to willist"
    end
end
