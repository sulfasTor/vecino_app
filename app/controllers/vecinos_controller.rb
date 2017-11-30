class VecinosController < ApplicationController
  before_action :authenticate_user!
  #skip_before_action :verify_authenticity_token
  #index show new edit update destroy

  def index
    @vecinos = Vecino.all
  end
  
  def show
    @vecino = Vecino.find(params[:id])
    @map = 	"https://www.google.com/maps/embed/v1/place?key=AIzaSyDmYN3xQvXMDAjZapUHgLcjAIu69lC1QJ8&q=#{@vecino.house_number}+Calle+#{@vecino.street}+#{@vecino.zip_code}"
  end
  
  def new
    @vecino = Vecino.new
  end

  def edit
    @vecino = Vecino.find(params[:id])
  end

  def create
    @vecino = Vecino.new(vecino_params)
    
    if @vecino.save
      redirect_to @vecino
    else
      render 'new'
    end
  end
  
  def update
    @vecino = Vecino.find(params[:id])
    
    if @vecino.update(vecino_params)
      redirect_to @vecino
    else
      render 'edit'
    end
  end

  def destroy
    @vecino = Vecino.find(params[:id])
    @vecino.destroy

    redirect_to vecinos_path
  end
  private
  def vecino_params
    params.require(:vecino).permit(:name, :phone, :house_number, :street, :zip_code)
  end
end
