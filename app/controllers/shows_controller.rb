class ShowsController < ApplicationController
  before_action :set_admin_band, only: [ :show ]

  def index
    @shows = Admin::Show.all
  end

  def show
  end

  private

    def set_admin_band
      @show = Admin::Show.find(params[:id])
    end

end
