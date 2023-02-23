class ListsController < ApplicationController

    # resources :list, only: [:index, :new, :show, :create] do
    def index
        @lists = List.all
    end

    def new
        @list = List.new
    end

    def show
        @list = List.find(params[:id])
    end

    def create
        @list = List.new(params[:list])
        @list.save
    end
end
