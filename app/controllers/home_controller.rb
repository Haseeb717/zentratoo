class HomeController < ApplicationController
  def index
  end

  def companies
    @companies = User.where(:status=>true).all
  end

  def company
    @company = User.find(params[:id])
  end

  def offers
    query = Hash.new
    query[:area_id] = params[:area_id] if params[:area_id]
    query[:request_type] = params[:request_type].present? ? params[:request_type] : "Sell"
    query[:category_id] = params[:category_id] if params[:category_id]
    query[:region] = params[:region] if params[:region_id]
    
    if params[:search].present?
      @requests = Request.where(query).all
    else
      @requests = Request.where(query).where('name LIKE (?) and description LIKE (?)',"%#{params[:search]}%","%#{params[:search]}%")
    end
  end

  def offer
    @request = Request.find(params[:id])
    View.create(:viewable_id=>@request.id,:viewable_type=>"Request")
  end

  def help
  end

  def terms_of_service
  end

  def imprint
  end

  def data_privacy
  end
end
