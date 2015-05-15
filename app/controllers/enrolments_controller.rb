class EnrolmentsController < ApplicationController
  before_action :set_enrolment, only: [:show, :edit, :update, :destroy]

  # GET /enrolments
  # GET /enrolments.json
  def index
    @enrolments = Enrolment.all
  end

  # GET /enrolments/1
  # GET /enrolments/1.json
  def show
  end

  # GET /enrolments/new
  def new
    @enrolment = Enrolment.new
    @student = @enrolment.build_student
    @address = @enrolment.build_address
    @employer = @enrolment.build_employer
    @emergency_contact = @enrolment.build_emergency_contact
    @emergency_contact1 = @enrolment.build_emergency_contact1
    @language_culture_diversity = @enrolment.build_language_culture_diversity
    @school = @enrolment.build_school
    @employment = @enrolment.build_employment
    @vic_student = @enrolment.build_vic_student
  end

  # GET /enrolments/1/edit
  def edit
    @enrolment = set_enrolment
    @student = @enrolment.student ||= @enrolment.build_student
    @address = @enrolment.address ||= @enrolment.build_address
    @employer = @enrolment.employer ||= @enrolment.build_employer
    @emergency_contact = @enrolment.emergency_contact  ||= @enrolment.build_emergency_contact
    @emergency_contact1 = @enrolment.emergency_contact1  ||= @enrolment.build_emergency_contact
    @language_culture_diversity = @enrolment.language_culture_diversity ||= @enrolment.build_language_culture_diversity
    @school = @enrolment.school ||= @enrolment.build_school
    @employment = @enrolment.employment ||= @enrolment.build_employment
    @vic_student = @enrolment.vic_student ||= @enrolment.build_vic_student
  end

  # POST /enrolments
  # POST /enrolments.json
  def create
    @enrolment = Enrolment.new(enrolment_params)

    respond_to do |format|
      if @enrolment.save
        # format.html { redirect_to @enrolment, notice: 'Enrolment was successfully created.' }
        format.html { redirect_to lln_test_path, notice: 'Enrolment details completed.'}
        format.json { render :show, status: :created, location: @enrolment }
      else
        format.html { render :new }
        format.json { render json: @enrolment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrolments/1
  # PATCH/PUT /enrolments/1.json
  def update
    respond_to do |format|
      if @enrolment.update(enrolment_params)
        # format.html { redirect_to @enrolment, notice: 'Enrolment was successfully updated.' }
        format.html { redirect_to lln_test_path, notice: 'Enrolment details completed.'}
        format.json { render :show, status: :ok, location: @enrolment }
      else
        format.html { render :edit }
        format.json { render json: @enrolment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrolments/1
  # DELETE /enrolments/1.json
  def destroy
    @enrolment.destroy
    respond_to do |format|
      format.html { redirect_to enrolments_url, notice: 'Enrolment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrolment
      @enrolment = Enrolment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enrolment_params
      params.require(:enrolment).permit(:course_id, :delivery_mode, :employer_id, :emergeny_contact_id, 
                                        :language_culture_diversity_id, :school_id, :employment_id, 
                                        :vic_student_id, :completed_qualification, 
                                        :qualification_received_location, :vet, :toc, :user_id, 
                                        {student_attributes: [:id, :title, :surname, :firstname, :middlename, 
                                          :dob, :home_phone, :mobile, :email, :city_of_birth, :usi, 
                                          :disabiltiy, :aus_citizen, :study_reason]}, 
                                        {address_attributes: [:id, :property_name, :street1, :street2, 
                                          :suburb, :postcode, :state, :country]},
                                        {employer_attributes: [:id, :trading_name, :contact_name, 
                                          :supervisor_name, :training_address, :phone, :fax, :email, :abn]},
                                        {emergency_contact_attributes: [:contact_name, :relationship, :home_phone, :mobile]},
                                        {emergency_contact1_attributes: [:contact_name, :relationship, :home_phone, :mobile]},
                                        {language_culture_diversity_attributes: [:birth_country, :home_language, :english_level]},
                                        {school_attributes: [:highest_school_level, :year, :secondary_school]},
                                        {employment_attributes: [:employment_status, :recent_occupation, :industry]},
                                        {vic_student_attributes: [:vsn, :latest_school, :previous_school]})
    end

end
