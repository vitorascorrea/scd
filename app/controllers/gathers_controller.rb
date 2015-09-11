class GathersController < ApplicationController 
  
  def index 
    @gather = Gather.all
    @agency = Agency.all
    @cemetery = Cemetery.all
    @coffin = Coffin.all
    @funeral = Funeral.all
    @placeofdeath = Placeofdeath.all
  end
  
  def show 
    @gather = Gather.find(params[:id])  
  end
  
  def new
    @gather = Gather.new   
  end  
  
  def edit    
  end
  
  def create
    @gather = Gather.new(params.require(:gather).permit(:ncf, :agency_id, :coffin_id, :deceased, :placeofdeath_id, :funeral_id, :cemetery_id, :healthcare, :outside))
    
    if @gather.save
      redirect_to @gather
    else
      render 'new'
    end
  end
  
  def destroy    
  end
  
end
