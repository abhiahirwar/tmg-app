class LanguageCultureDiversitiesController < ApplicationController
  before_action :set_language_culture_diversity, only: [:show, :edit, :update, :destroy]

  # GET /language_culture_diversities
  # GET /language_culture_diversities.json
  def index
    @language_culture_diversities = LanguageCultureDiversity.all
  end

  # GET /language_culture_diversities/1
  # GET /language_culture_diversities/1.json
  def show
  end

  # GET /language_culture_diversities/new
  def new
    @language_culture_diversity = LanguageCultureDiversity.new
  end

  # GET /language_culture_diversities/1/edit
  def edit
  end

  # POST /language_culture_diversities
  # POST /language_culture_diversities.json
  def create
    @language_culture_diversity = LanguageCultureDiversity.new(language_culture_diversity_params)

    respond_to do |format|
      if @language_culture_diversity.save
        format.html { redirect_to @language_culture_diversity, notice: 'Language culture diversity was successfully created.' }
        format.json { render :show, status: :created, location: @language_culture_diversity }
      else
        format.html { render :new }
        format.json { render json: @language_culture_diversity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /language_culture_diversities/1
  # PATCH/PUT /language_culture_diversities/1.json
  def update
    respond_to do |format|
      if @language_culture_diversity.update(language_culture_diversity_params)
        format.html { redirect_to @language_culture_diversity, notice: 'Language culture diversity was successfully updated.' }
        format.json { render :show, status: :ok, location: @language_culture_diversity }
      else
        format.html { render :edit }
        format.json { render json: @language_culture_diversity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /language_culture_diversities/1
  # DELETE /language_culture_diversities/1.json
  def destroy
    @language_culture_diversity.destroy
    respond_to do |format|
      format.html { redirect_to language_culture_diversities_url, notice: 'Language culture diversity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language_culture_diversity
      @language_culture_diversity = LanguageCultureDiversity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def language_culture_diversity_params
      params.require(:language_culture_diversity).permit(:birth_country, :home_language, :english_level)
    end
end
