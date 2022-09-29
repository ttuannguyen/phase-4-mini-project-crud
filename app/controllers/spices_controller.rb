class SpicesController < ApplicationController
    
    # READ
    def index
        render json: Spice.all
    end

    # CREATE 
    def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created
    end

    # UPDATE
    def update
        spice = Spice.find(params[:id])
        spice.update(spice_params)
        render json: spice, status: :created        
    end 

    # DELETE
    def destroy
        spice = Spice.find(params[:id])
        spice.destroy
        head :no_content
        
    end

    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating )
    end


end