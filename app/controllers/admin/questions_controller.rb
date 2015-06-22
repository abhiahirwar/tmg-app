class Admin::QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  def index
    @questions = Question.all
  end

  def show
    @question = set_question
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to [:admin, @question], notice: 'Question was created successfully.'
    else
      render :new
    end
  end

  def update
    if @question.update(question_params)
      redirect_to [:admin, @question], notice: 'update successfully'
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    render_to admin_questions_url, notice: 'Question was successfully destroyed'
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:title, :content, answer_attributes: [:content])
    end
end
