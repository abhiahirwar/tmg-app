class VicStudentsController < ApplicationController
  before_action :set_vic_student, only: [:show, :edit, :update, :destroy]

  # GET /vic_students
  # GET /vic_students.json
  def index
    @vic_students = VicStudent.all
  end

  # GET /vic_students/1
  # GET /vic_students/1.json
  def show
  end

  # GET /vic_students/new
  def new
    @vic_student = VicStudent.new
  end

  # GET /vic_students/1/edit
  def edit
  end

  # POST /vic_students
  # POST /vic_students.json
  def create
    @vic_student = VicStudent.new(vic_student_params)

    respond_to do |format|
      if @vic_student.save
        format.html { redirect_to @vic_student, notice: 'Vic student was successfully created.' }
        format.json { render :show, status: :created, location: @vic_student }
      else
        format.html { render :new }
        format.json { render json: @vic_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vic_students/1
  # PATCH/PUT /vic_students/1.json
  def update
    respond_to do |format|
      if @vic_student.update(vic_student_params)
        format.html { redirect_to @vic_student, notice: 'Vic student was successfully updated.' }
        format.json { render :show, status: :ok, location: @vic_student }
      else
        format.html { render :edit }
        format.json { render json: @vic_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vic_students/1
  # DELETE /vic_students/1.json
  def destroy
    @vic_student.destroy
    respond_to do |format|
      format.html { redirect_to vic_students_url, notice: 'Vic student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vic_student
      @vic_student = VicStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vic_student_params
      params.require(:vic_student).permit(:vsn, :latest_school, :previous_school)
    end
end
