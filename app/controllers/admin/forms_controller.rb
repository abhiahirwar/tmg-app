class Admin::FormsController < ApplicationController
	
	def index
    @forms = Form.all
  end

  def show
    @form = set_form
  end

  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)

    if @form.save
      redirect_to [:admin, @form], notice: 'Form was created successfully.'
    else
      render :new
    end
  end

  def update
    if @form.update(form_params)
      redirect_to @form, notice: 'update successfully'
    else
      render :edit
    end
  end

  def destroy
    @form.destroy
    render_to admin_forms_url, notice: 'Form was successfully destroyed'
  end

	private

		def set_form
			@form = Form.find(params[:id])
		end

		def form_params
			params.require(:form).permit(:form_name, :description, :version)
		end

end
