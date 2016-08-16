class TaggingsController < ApplicationController
  before_action :set_tagging, only: [:show, :update, :destroy]

  # GET /taggings
  # GET /taggings.json
  def index
    @taggings = Tagging.all

    render json: @taggings
  end

  # GET /taggings/1
  # GET /taggings/1.json
  def show
    render json: @tagging
  end

  # POST /taggings
  # POST /taggings.json
  def create
    @tagging = Tagging.new(tagging_params)

    if @tagging.save
      render json: @tagging, status: :created, location: @tagging
    else
      render json: @tagging.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /taggings/1
  # PATCH/PUT /taggings/1.json
  def update
    @tagging = Tagging.find(params[:id])

    if @tagging.update(tagging_params)
      head :no_content
    else
      render json: @tagging.errors, status: :unprocessable_entity
    end
  end

  # DELETE /taggings/1
  # DELETE /taggings/1.json
  def destroy
    @tagging.destroy

    head :no_content
  end

  private

    def set_tagging
      @tagging = Tagging.find(params[:id])
    end

    def tagging_params
      params.require(:tagging).permit(:spark_id, :tag_id)
    end
end
