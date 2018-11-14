class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy]
  layout 'portfolio'
  access all: [:show, :index, :angular, :search], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all
  
  def index
    @technologies = Technology.all.distinct
    angular = portfolio_params["portfolio"]
    if angular != nil 
      angular.to_sym.to_s.split.join
      @portfolios = Portfolio.all
      @portfolio_items = @portfolios.joins(:technologies).where("name LIKE ?", angular ).by_position
    else
      @portfolio_items = Portfolio.by_position
    end
    render :index
  end


  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end

    render nothing: true
  end

  def search
  
    @technologies = Technology.all.uniq 
    @portfolio_items = Portfolio.joins(:technologies).where('name LIKE ?', "React")
    render :index
  end 

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params.require(:portfolio))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  def destroy
    # Destroy/delete the record
    @portfolio_item.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was removed.' }
    end
  end

  private

  def portfolio_params
    params.except(:utf8, :authenticity_token, :commit).permit!
  end

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
    @technologies = Technology.all.uniq
  end
end
