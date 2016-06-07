class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  # GET /teams.json
  def index
    @teams = Team.all
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
  end

  # GET /teams/new
  def new
    if current_user.try(:admin?)
      @team = Team.new
    else
      flash[:error] = "You're now suppose to be there"
      redirect_to :back
    end
  end

  # GET /teams/1/edit
  def edit
    if current_user.try(:admin?)
      #GO TO EDIT
    else
      flash[:error] = "You're now suppose to be there"
      redirect_to :back
    end
  end

  # POST /teams
  # POST /teams.json
  def create
    if current_user.try(:admin?)
      @team = Team.new(team_params)

      respond_to do |format|
        if @team.save
          format.html { redirect_to @team, notice: 'Team was successfully created.' }
          format.json { render :show, status: :created, location: @team }
        else
          format.html { render :new }
          format.json { render json: @team.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:error] = "You're now suppose to be there"
      redirect_to :back
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    if current_user.try(:admin?)
      respond_to do |format|
        if @team.update(team_params)
          format.html { redirect_to @team, notice: 'Team was successfully updated.' }
          format.json { render :show, status: :ok, location: @team }
        else
          format.html { render :edit }
          format.json { render json: @team.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:error] = "You're now suppose to be there"
      redirect_to :back
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    if current_user.try(:admin?)
      @team.destroy
      respond_to do |format|
        format.html { redirect_to :back, notice: 'Team was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      flash[:error] = "You're now suppose to be there"
      redirect_to :back
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.fetch(:team, {}).permit(:name, :flag_url)
    end
end
