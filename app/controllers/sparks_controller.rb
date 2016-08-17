#
class SparksController < ProtectedController
  before_action :set_spark, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:create, :update, :destroy]

  # GET /sparks
  # GET /sparks.json
  def index
    @sparks = Spark.all
    if params[:category].present?
        @sparks =  @sparks.where(category: params[:category])
    end
    p @sparks
    render json: @sparks
  end

  # GET /sparks/1
  # GET /sparks/1.json
  def show
    render json: @spark
  end

  # POST /sparks
  # POST /sparks.json
  def create
    @spark = Spark.new(spark_params)
    @spark.user_id = @current_user.id
    @owner = Influencer.find_by user_id: @current_user.id
    @spark.influencer = @owner

    if @spark.save
      render json: @spark, status: :created, location: @spark
    else
      render json: @spark.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sparks/1
  # PATCH/PUT /sparks/1.json
  def update
    @spark = Spark.find(params[:id])
    if @spark.user_id == @current_user.id
      if @spark.update(spark_params)
        head :no_content
      else
        render json: @spark.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /sparks/1
  # DELETE /sparks/1.json
  def destroy
    if @spark.user_id == @current_user.id
      @spark.destroy

      head :no_content
    end
  end

  private

    def set_spark
      @spark = Spark.find(params[:id])
    end

    def spark_params
      params.require(:spark).permit(:name, :details, :verification, :criteria, :deadline, :category, :video, :photo, :user_id, :influencer_id)
    end
end
