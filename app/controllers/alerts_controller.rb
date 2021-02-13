class AlertsController < InheritedResources::Base

	def index
		@alerts = current_user.alerts
	end

	def create
    
    @alert = Alert.new(alert_params)
    respond_to do |format|
      if @alert.save
        format.html { redirect_to alerts_path, notice: 'Alert was successfully created.' }
        format.json { render :show, status: :created, location: @alert }
      else
        format.html { render :new }
        format.json { render json: @alert.errors, status: :unprocessable_entity }
      end
  end

  private

    def alert_params
      params.require(:alert).permit(:request_id, :alert_type, :area_id, :user_id)
    end

end
