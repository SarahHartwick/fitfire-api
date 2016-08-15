class InfluencersController < ProtectedController
  before_action :set_influencer, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:create, :update, :destroy]

  # GET /influencers
  # GET /influencers.json
  def index
    @influencers = Influencer.all

    render json: @influencers
  end

  # GET /influencers/1
  # GET /influencers/1.json
  def show
    render json: @influencer
  end

  # POST /influencers
  # POST /influencers.json
  def create
    @influencer = Influencer.new(influencer_params)
    @influencer.user_id = @current_user.id
    @user = User.find(@current_user.id)
    @user.influencer = true
    @user.save

    if @influencer.save
      render json: @influencer, status: :created, location: @influencer
    else
      render json: @influencer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /influencers/1
  # PATCH/PUT /influencers/1.json
  def update
    @influencer = Influencer.find(params[:id])

    if @influencer.update(influencer_params)
      head :no_content
    else
      render json: @influencer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /influencers/1
  # DELETE /influencers/1.json
  def destroy
    @influencer.destroy

    head :no_content
  end

  private

    def set_influencer
      @influencer = Influencer.find(params[:id])
    end

    def influencer_params
      params.require(:influencer).permit(:firstname, :lastname, :description, :facebook, :twitter, :instagram, :snapchat, :profession, :tags, :certifications, :user_id)
    end
end
