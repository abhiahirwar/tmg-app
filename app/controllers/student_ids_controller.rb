
class StudentIdsController < ApplicationController
  before_action :set_student_id, only: [:show, :edit, :update, :destroy]
  before_action :set_enrolment, only: [:index, :show, :edit, :update, :destroy, :create]

  # GET /student_ids
  # GET /student_ids.json
  def index
    set_enrolment
    if @enrolment
      @student_ids = @enrolment.student_ids
    else
      @student_ids = StudentId.all
      @notice = "Displaying All Ids"
    end
  end

  # GET /student_ids/1
  # GET /student_ids/1.json
  def show
  end

  # GET /student_ids/new
  def new
    @student_id = StudentId.new
  end

  # GET /student_ids/1/edit
  def edit
  end

  # POST /student_ids
  # POST /student_ids.json
  def create
    # binding.pry
    @student_id = StudentId.new(student_id_params)

    respond_to do |format|
      if @student_id.save
        if @enrolment
          format.html { redirect_to enrolment_student_ids_path(@enrolment), notice: 'Student was successfully created.' }
        else
          format.html { redirect_to student_ids_url, notice: 'Student was successfully created.' }
          format.json { render :show, status: :created, location: @student_id }
        end
      else
        format.html { render :new }
        format.json { render json: @student_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_ids/1
  # PATCH/PUT /student_ids/1.json
  def update
    respond_to do |format|
      if @student_id.update(student_id_params)
        if @enrolment
          format.html { redirect_to enrolment_student_ids_path(@enrolment), notice: 'Student was successfully updated.' }
        else
          format.html { redirect_to @student_id, notice: 'Student was successfully updated.' }
          format.json { render :show, status: :ok, location: @student_id }
        end
      else
        format.html { render :edit }
        format.json { render json: @student_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_ids/1
  # DELETE /student_ids/1.json
  def destroy
    @student_id.destroy
    respond_to do |format|
      if @enrolment
        format.html { redirect_to enrolment_student_ids_path(@enrolment), notice: 'Student was successfully destroyed.' }
      else  
        format.html { redirect_to student_ids_url, notice: 'Student was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_id
      @student_id = StudentId.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_id_params
      params.require(:student_id).permit(:title, :image, :imgae_file_name, :category, :enrolment_id, :user_id)
    end

    def set_enrolment
      @enrolment = Enrolment.find_by_id(params[:enrolment_id])
    end
end
