class KanriDaichosController < ApplicationController
  before_action :set_kanri_daicho, only: [:show, :edit, :update, :destroy]

  # GET /kanri_daichos
  # GET /kanri_daichos.json
  def index
    @kanri_daichos = KanriDaicho.page(params[:page])
  end

  # GET /kanri_daichos/1
  # GET /kanri_daichos/1.json
  def show
  end

  # GET /kanri_daichos/new
  def new
    @kanri_daicho = KanriDaicho.new
  end

  # GET /kanri_daichos/1/edit
  def edit
  end

  # POST /kanri_daichos
  # POST /kanri_daichos.json
  def create
    @kanri_daicho = KanriDaicho.new(kanri_daicho_params)

    respond_to do |format|
      if @kanri_daicho.save
        format.html { redirect_to @kanri_daicho, notice: 'Kanri daicho was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kanri_daicho }
      else
        format.html { render action: 'new' }
        format.json { render json: @kanri_daicho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kanri_daichos/1
  # PATCH/PUT /kanri_daichos/1.json
  def update
    respond_to do |format|
      if @kanri_daicho.update(kanri_daicho_params)
        format.html { redirect_to @kanri_daicho, notice: 'Kanri daicho was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kanri_daicho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kanri_daichos/1
  # DELETE /kanri_daichos/1.json
  def destroy
    @kanri_daicho.destroy
    respond_to do |format|
      format.html { redirect_to kanri_daichos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kanri_daicho
      @kanri_daicho = KanriDaicho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kanri_daicho_params
      params.require(:kanri_daicho).permit(:toiawase_id, :google_id, :birthday, :prefecture, :kasetsu_name, :tel_number)
    end
end
