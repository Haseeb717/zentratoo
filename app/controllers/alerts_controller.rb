class AlertsController < InheritedResources::Base

	def index
		@alerts = current_user.alerts
	end

  private

    def alert_params
      params.require(:alert).permit(:request_id, :alert_type, :area_id, :user_id)
    end

end
