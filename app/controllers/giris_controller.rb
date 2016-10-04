class GirisController < ApplicationController
  before_action :set_giri, only: [:show, :edit, :update, :destroy]

  # GET /giris
  # GET /giris.json
  def index
    @giris = Giri.all
  end

  # GET /giris/1
  # GET /giris/1.json
  def show
  end

  # GET /giris/new
  def new
    @giri = Giri.new
  end

  # GET /giris/1/edit
  def edit
  end

  # POST /giris
  # POST /giris.json
  def create
    @giri = Giri.new(giri_params)

    respond_to do |format|
      if @giri.save
        format.html { redirect_to @giri, notice: 'Giri was successfully created.' }
        format.json { render :show, status: :created, location: @giri }
      else
        format.html { render :new }
        format.json { render json: @giri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /giris/1
  # PATCH/PUT /giris/1.json
  def update
    respond_to do |format|
      if @giri.update(giri_params)
        format.html { redirect_to @giri, notice: 'Giri was successfully updated.' }
        format.json { render :show, status: :ok, location: @giri }
      else
        format.html { render :edit }
        format.json { render json: @giri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /giris/1
  # DELETE /giris/1.json
  def destroy
    @giri.destroy
    respond_to do |format|
      format.html { redirect_to giris_url, notice: 'Giri was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_giri
      @giri = Giri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def giri_params
      params.require(:giri).permit(:ilk_basvuru_tarihi, :gonullu_id, :basvuran_id, :morcati_destegi_aliyor, :iletisime_gecen, :iletisime_gecme_yolu, :notlar)
    end
end
