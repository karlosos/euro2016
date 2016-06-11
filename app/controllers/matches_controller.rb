class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]

  #before_action :authenticate_user!
  # GET /matches
  # GET /matches.json
  def index
    @matches = Match.all.order(:date)
  end

  # GET /matches/1
  # GET /matches/1.json
  def show
    @match = Match.find(params[:id])
    @predictions_chart = Hash[ "Remis" => @match.predictions.where(:predicted_result => 0 ).count,
      "#{@match.team_a.name}" => @match.predictions.where(:predicted_result => 1 ).count,
      "#{@match.team_b.name}" => @match.predictions.where(:predicted_result => 2 ).count ]
  end

  # GET /matches/new
  def new
    if current_user.try(:admin?)
      @match = Match.new
    else
      flash[:error] = "You're now suppose to be there"
      redirect_to root_url
    end
  end

  # GET /matches/1/edit
  def edit
    if current_user.try(:admin?)
    else
      flash[:error] = "You're now suppose to be there"
      redirect_to root_url
    end
  end

  # POST /matches
  # POST /matches.json
  def create
    if current_user.try(:admin?)
      @match = Match.new(match_params)

      respond_to do |format|
        if @match.save
          format.html { redirect_to @match, notice: 'Match was successfully created.' }
          format.json { render :show, status: :created, location: @match }
        else
          format.html { render :new }
          format.json { render json: @match.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:error] = "You're now suppose to be there"
      redirect_to root_url
    end
  end

  # PATCH/PUT /matches/1
  # PATCH/PUT /matches/1.json
  def update
    if current_user.try(:admin?)
      respond_to do |format|
        if @match.update(match_params)
          format.html { redirect_to @match, notice: 'Match was successfully updated.' }
          format.json { render :show, status: :ok, location: @match }
        else
          format.html { render :edit }
          format.json { render json: @match.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:error] = "You're now suppose to be there"
      redirect_to root_url
    end
  end

  # DELETE /matches/1
  # DELETE /matches/1.json
  def destroy
    if current_user.try(:admin?)
      @match.destroy
      respond_to do |format|
        format.html { redirect_to matches_url, notice: 'Match was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      flash[:error] = "You're now suppose to be there"
      redirect_to root_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_params
      params.fetch(:match, {}).permit(:team_a, :team_b, :score_a, :score_b, :date, :team_a_id, :team_b_id)
    end
end
