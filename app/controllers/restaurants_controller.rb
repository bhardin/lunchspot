class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    if current_user
      @recommendations = current_user.recommendations
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    
    if params[:rating] == "like"
      current_user.like @restaurant
      redirect_to :back
    elsif params[:rating] == "dislike"
      current_user.dislike @restaurant
      redirect_to :back
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save
      redirect_to @restaurant, :notice => "Successfully created restaurant."
    else
      render :action => 'new'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(params[:restaurant])
      redirect_to @restaurant, :notice  => "Successfully updated restaurant."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_url, :notice => "Successfully destroyed restaurant."
  end
  
  def random
    r_id = Random.new.rand(1..Restaurant.count)
    redirect_to restaurant_path(r_id)
  end
end
