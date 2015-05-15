class PreTrainingReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pre_training_review, only: [:show, :edit, :update, :destroy]

  # GET /pre_training_reviews
  # GET /pre_training_reviews.json
  def index
    @pre_training_reviews = PreTrainingReview.all
  end

  # GET /pre_training_reviews/1
  # GET /pre_training_reviews/1.json
  def show
  end

  # GET /pre_training_reviews/new
  def new
    @pre_training_review = PreTrainingReview.new
  end

  # GET /pre_training_reviews/1/edit
  def edit
  end

  # POST /pre_training_reviews
  # POST /pre_training_reviews.json
  def create
    @pre_training_review = PreTrainingReview.new(pre_training_review_params)

    respond_to do |format|
      if @pre_training_review.save
        # format.html { redirect_to @pre_training_review, notice: 'Pre training review was successfully created.' }
        format.html {redirect_to new_enrolment_path, notice: 'Pre training review is complete.'}
        format.json { render :show, status: :created, location: @pre_training_review }
      else
        format.html { render :new }
        format.json { render json: @pre_training_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pre_training_reviews/1
  # PATCH/PUT /pre_training_reviews/1.json
  def update
    respond_to do |format|
      if @pre_training_review.update(pre_training_review_params)
        # format.html { redirect_to @pre_training_review, notice: 'Pre training review was successfully updated.' }
        if (current_user.enrolments.count == 0)
          format.html {redirect_to new_enrolment_path, notice: 'Pre training review is updated.'}
        else
          format.html {redirect_to edit_enrolment_path(current_user.enrolments.first), notice: 'Pre training review is updated.'}
        end
        format.json { render :show, status: :ok, location: @pre_training_review }
      else
        format.html { render :edit }
        format.json { render json: @pre_training_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pre_training_reviews/1
  # DELETE /pre_training_reviews/1.json
  def destroy
    @pre_training_review.destroy
    respond_to do |format|
      format.html { redirect_to pre_training_reviews_url, notice: 'Pre training review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pre_training_review
      @pre_training_review = PreTrainingReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pre_training_review_params
      params.require(:pre_training_review).permit(:rpl, :credit_transfer, :area_of_work, :employment, :pathway, :preferred_learning_style, :delivery_mode, :speical_condition, :toc, :user_id)
    end
end
