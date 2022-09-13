class EmergencyTypesController < ApplicationController
  before_action :set_emergency_type, only: %i[ show update destroy ]

  # GET /emergency_types
  def index
    @emergency_types = EmergencyType.all

    render json: @emergency_types
  end

  # GET /emergency_types/1
  def show
    render json: @emergency_type
  end

  # POST /emergency_types
  def create
    @emergency_type = EmergencyType.new(emergency_type_params)

    if @emergency_type.save
      render json: @emergency_type, status: :created, location: @emergency_type
    else
      render json: @emergency_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /emergency_types/1
  def update
    if @emergency_type.update(emergency_type_params)
      render json: @emergency_type
    else
      render json: @emergency_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /emergency_types/1
  def destroy
    @emergency_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emergency_type
      @emergency_type = EmergencyType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emergency_type_params
      params.require(:emergency_type).permit(:name)
    end
end
