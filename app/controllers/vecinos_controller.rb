class VecinosController < ApplicationController
  skip_before_action :verify_authenticity_token
  #index show new edit update destroy

  def index
    @vecinos = Vecino.all
  end
  
  def show
    @vecino = Vecino.find(params[:id])
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
  
  private
  def vecino_params
    params.require(:vecino).permit(:name, :address, :phone)
  end
end
