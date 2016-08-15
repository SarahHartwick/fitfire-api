class SponsorsController < ProtectedController
  before_action :set_sponsor, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:create, :update, :destroy]

  # GET /sponsors
  # GET /sponsors.json
  def index
    @sponsors = Sponsor.all

    render json: @sponsors
  end

  # GET /sponsors/1
  # GET /sponsors/1.json
  def show
    render json: @sponsor
  end

  # POST /sponsors
  # POST /sponsors.json
  def create
    @sponsor = Sponsor.new(sponsor_params)
    @sponsor.user_id = @current_user.id
    @user = User.find(@current_user.id)
    @user.sponsor = true
    @user.save

    if @sponsor.save
      render json: @sponsor, status: :created, location: @sponsor
    else
      render json: @sponsor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sponsors/1
  # PATCH/PUT /sponsors/1.json
  def update
    @sponsor = Sponsor.find(params[:id])

    if @sponsor.update(sponsor_params)
      head :no_content
    else
      render json: @sponsor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sponsors/1
  # DELETE /sponsors/1.json
  def destroy
    @sponsor.destroy

    head :no_content
  end

  private

    def set_sponsor
      @sponsor = Sponsor.find(params[:id])
    end

    def sponsor_params
      params.require(:sponsor).permit(:name, :description, :website, :industry, :tags, :user_id)
    end
end
