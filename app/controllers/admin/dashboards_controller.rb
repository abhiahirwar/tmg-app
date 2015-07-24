class Admin::DashboardsController < ApplicationController
  before_action :authenticate_user!
  layout "admin"
  def index
    @enrolments = Enrolment.last(5)
  end
end
