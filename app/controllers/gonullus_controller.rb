class GonullusController < ApplicationController
  before_action :set_gonullu, only: [:show, :edit, :update, :destroy]

  # GET /gonullus
  # GET /gonullus.json
  def index
    @gonullus = Gonullu.all
  end

  # GET /gonullus/1
  # GET /gonullus/1.json
  def show
  end

  # GET /gonullus/new
  def new
    @gonullu = Gonullu.new
  end

  # GET /gonullus/1/edit
  def edit
  end

  # POST /gonullus
  # POST /gonullus.json
  def create
    @gonullu = Gonullu.new(gonullu_params)

    respond_to do |format|
      if @gonullu.save
        format.html { redirect_to @gonullu, notice: 'Gonullu was successfully created.' }
        format.json { render :show, status: :created, location: @gonullu }
      else
        format.html { render :new }
        format.json { render json: @gonullu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gonullus/1
  # PATCH/PUT /gonullus/1.json
  def update
    respond_to do |format|
      if @gonullu.update(gonullu_params)
        format.html { redirect_to @gonullu, notice: 'Gonullu was successfully updated.' }
        format.json { render :show, status: :ok, location: @gonullu }
      else
        format.html { render :edit }
        format.json { render json: @gonullu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gonullus/1
  # DELETE /gonullus/1.json
  def destroy
    @gonullu.destroy
    respond_to do |format|
      format.html { redirect_to gonullus_url, notice: 'Gonullu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gonullu
      @gonullu = Gonullu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gonullu_params
      params.require(:gonullu).permit(:isim)
    end
end
