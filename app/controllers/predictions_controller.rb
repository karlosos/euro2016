class PredictionsController < ApplicationController
  before_action :set_prediction, only: [:show, :edit, :update, :destroy]

  # GET /predictions
  # GET /predictions.json
  def index
    if current_user
      @predictions = current_user.predictions
    else
      flash[:notice] = "You're not logged in"
      redirect_to :root
    end
    #@predictions = Prediction.all
  end

  # GET /predictions/1
  # GET /predictions/1.json
  def show
  end

  # GET /predictions/new
  def new
    @match = Match.find(params[:match_id])
    @prediction = Prediction.new
  end

  # GET /predictions/1/edit
  def edit
    @match = Prediction.find(params[:id]).match
  end

  # POST /predictions
  # POST /predictions.json
  def create
    @prediction = Prediction.new(prediction_params)

    respond_to do |format|
      if @prediction.save
        format.html { redirect_to @prediction, notice: 'Prediction was successfully created.' }
        format.json { render :show, status: :created, location: @prediction }
      else
        format.html { render :new }
        format.json { render json: @prediction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /predictions/1
  # PATCH/PUT /predictions/1.json
  def update
    respond_to do |format|
      if @prediction.user == current_user
        if @prediction.update(prediction_params)
          format.html { redirect_to @prediction, notice: 'Prediction was successfully updated.' }
          format.json { render :show, status: :ok, location: @prediction }
        else
          format.html { render :edit }
          format.json { render json: @prediction.errors, status: :unprocessable_entity }
        end
      else
        flash[:error] = "You can't do that"
        format.html { render :show }
      end
    end
  end

  def update_multiple
    if params[:predictions]
      Prediction.update(params[:predictions].keys, params[:predictions].values)
      flash[:success] = "Predictions updated"
      redirect_to :back
    else
      flash[:notice] = "Nothing to update"
      redirect_to :back
    end
  end

  # DELETE /predictions/1
  # DELETE /predictions/1.json
  def destroy
    if current_user.try(:admin?)
      @prediction.destroy
      respond_to do |format|
        format.html { redirect_to predictions_url, notice: 'Prediction was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to predictions_url, alert: 'You can\'t do that.' }
        format.json { render json: @prediction.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prediction
      @prediction = Prediction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prediction_params
      params.fetch(:prediction, {}).permit(:score_a, :score_b, :user)
    end
end
