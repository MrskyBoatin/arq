class PlayInfosController < ApplicationController
  before_action :set_play_info, only: [:show, :edit, :update, :destroy]

  # GET /play_infos
  # GET /play_infos.json
  def index
    @play_infos = PlayInfo.all
  end

  # GET /play_infos/1
  # GET /play_infos/1.json
  def show
  end

  # GET /play_infos/new
  def new
    @play_info = PlayInfo.new
  end

  # GET /play_infos/1/edit
  def edit
  end

  # POST /play_infos
  # POST /play_infos.json
  def create
    @play_info = PlayInfo.new(play_info_params)

    respond_to do |format|
      if @play_info.save
        format.html { redirect_to @play_info, notice: 'Play info was successfully created.' }
        format.json { render :show, status: :created, location: @play_info }
      else
        format.html { render :new }
        format.json { render json: @play_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /play_infos/1
  # PATCH/PUT /play_infos/1.json
  def update
    respond_to do |format|
      if @play_info.update(play_info_params)
        format.html { redirect_to @play_info, notice: 'Play info was successfully updated.' }
        format.json { render :show, status: :ok, location: @play_info }
      else
        format.html { render :edit }
        format.json { render json: @play_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /play_infos/1
  # DELETE /play_infos/1.json
  def destroy
    @play_info.destroy
    respond_to do |format|
      format.html { redirect_to play_infos_url, notice: 'Play info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_play_info
      @play_info = PlayInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def play_info_params
      params[:play_info]
    end
end
