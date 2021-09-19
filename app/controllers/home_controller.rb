class HomeController < ApplicationController
  def index
    redirect_to admin_dashboard_path, action: :show
  end
end
