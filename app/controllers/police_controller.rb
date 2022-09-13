class PoliceController < ApplicationController
  before_action :set_police, only: %i[ show update destroy ]

  # GET /police
  def index
    @police = Police.all

    render json: @police
  end

  # GET /police/1
  def show
    render json: @police
  end

  # POST /police
  def create
    @police = Police.new(police_params)

    if @police.save
      render json: @police, status: :created, location: @police
    else
      render json: @police.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /police/1
  def update
    if @police.update(police_params)
      render json: @police
    else
      render json: @police.errors, status: :unprocessable_entity
    end
  end

  # DELETE /police/1
  def destroy
    @police.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_police
      @police = Police.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def police_params
      params.require(:police).permit(:name, :email, :password)
    end
end
