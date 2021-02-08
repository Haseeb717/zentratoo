class RequestsController < InheritedResources::Base

	def index
		@query = Hash.new
    @query[:area_id] = params[:area_id] if params[:area_id]
    @query[:request_type] = params[:request_type].present? ? params[:request_type] : "Buy"
    @query[:category_id] = params[:category_id] if params[:category_id]
    @query[:region] = params[:region] if params[:region_id]
    
    if params[:search].present?
      @requests = Request.where(@query).all
    else
      @requests = Request.where(@query).where('name LIKE (?) and description LIKE (?)',"%#{params[:search]}%","%#{params[:search]}%")
    end
	end

	def show
		@request = Request.find_by_id(params[:id])
    View.create(:viewable_id=>@request.id,:viewable_type=>"Request")
  end

  private

    def request_params
      params.require(:request).permit(:request_type, :category_id, :area_id, :name, :region, :description, :manufacture_date, :document_description,:quantity,:price,:convertible_unit_id,:currency_id)
    end

end
