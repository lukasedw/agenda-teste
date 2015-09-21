class Admin::BandsController < AdminController
  before_action :set_admin_band, only: [:show, :edit, :update, :destroy]

  # GET /admin/bands
  # GET /admin/bands.json
  def index
    @admin_bands = Admin::Band.all
  end

  # GET /admin/bands/1
  # GET /admin/bands/1.json
  def show
  end

  # GET /admin/bands/new
  def new
    @admin_band = Admin::Band.new
  end

  # GET /admin/bands/1/edit
  def edit
  end

  # POST /admin/bands
  # POST /admin/bands.json
  def create
    @admin_band = Admin::Band.new(admin_band_params)

    respond_to do |format|
      if @admin_band.save
        format.html { redirect_to @admin_band, notice: 'Band was successfully created.' }
        format.json { render :show, status: :created, location: @admin_band }
      else
        format.html { render :new }
        format.json { render json: @admin_band.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/bands/1
  # PATCH/PUT /admin/bands/1.json
  def update
    respond_to do |format|
      if @admin_band.update(admin_band_params)
        format.html { redirect_to @admin_band, notice: 'Band was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_band }
      else
        format.html { render :edit }
        format.json { render json: @admin_band.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/bands/1
  # DELETE /admin/bands/1.json
  def destroy
    @admin_band.destroy
    respond_to do |format|
      format.html { redirect_to admin_bands_url, notice: 'Band was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_band
      @admin_band = Admin::Band.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_band_params
      params.require(:admin_band).permit(:name, :category_id)
    end
end
