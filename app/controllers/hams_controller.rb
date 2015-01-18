class HamsController < ApplicationController
  before_action :set_ham, only: [:show, :edit, :update, :destroy]

  # GET /hams
  # GET /hams.json
  def index
    @hams = Ham.all
  end

  # GET /hams/1
  # GET /hams/1.json
  def show
  end

  # GET /hams/new
  def new
    @ham = Ham.new
  end

  # GET /hams/1/edit
  def edit
  end

  # POST /hams
  # POST /hams.json
  def create
    @ham = Ham.new(ham_params)

    respond_to do |format|
      if @ham.save
        format.html { redirect_to @ham, notice: 'Ham was successfully created.' }
        format.json { render :show, status: :created, location: @ham }
      else
        format.html { render :new }
        format.json { render json: @ham.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hams/1
  # PATCH/PUT /hams/1.json
  def update
    respond_to do |format|
      if @ham.update(ham_params)
        format.html { redirect_to @ham, notice: 'Ham was successfully updated.' }
        format.json { render :show, status: :ok, location: @ham }
      else
        format.html { render :edit }
        format.json { render json: @ham.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hams/1
  # DELETE /hams/1.json
  def destroy
    @ham.destroy
    respond_to do |format|
      format.html { redirect_to hams_url, notice: 'Ham was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ham
      @ham = Ham.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ham_params
      params[:ham]
    end
end
