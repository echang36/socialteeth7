class ContributionsController < ApplicationController

  before_filter :authenticate_user!, :except=>[:show, :index]

  def index
    @contributions = Contribution.all
  end

  
  def show
    @contribution = Contribution.find(params[:id])
  end

  
  def new
    @contribution = Contribution.new
  end

  
  def create
    @contribution = current_user.contributions.build(ad_id: params[:contribution][:ad_id], amount: params[:contribution][:amount])
    if @contribution.save
      redirect_to @contribution, :notice => "Successfully created contribution."
    else
      render :action => 'new'
    end
  end

  
  
  def destroy
    @contribution = Contribution.find(params[:id])
    @contribution.destroy
    redirect_to contributions_url, :notice => "Successfully destroyed contribution."
  end
end
