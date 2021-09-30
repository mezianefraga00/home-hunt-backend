class HomesController < ApplicationController

def index
    @homes = Home.all
  end

  def show
    @home = Home.find(params[:id])
  end

  def new
    @home = Home.new
  end

  def create
    home = Home.new(article_params)

    if home.save
        render json: home, status: :created
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @home = Home.find(params[:id])
  end

  def update
    @home = Home.find(params[:id])

    if @home.update(article_params)
      redirect_to @home
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @home = Home.find(params[:id])
    @home.destroy

    redirect_to root_path
  end

  
    def article_params
      params.require(:home).permit(:home_type, :surface, :parking, :heating, :backyard,
                                   :laundry, :dishawasher, :cooling, :deal_type, 
                                    :nbr_bedroom, :nbr_bathroom, :pets_allowed,
                                     :img_url, :description)
    end
end
