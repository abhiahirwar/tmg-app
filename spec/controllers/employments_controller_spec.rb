require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe EmploymentsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Employment. As you add validations to Employment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EmploymentsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all employments as @employments" do
      employment = Employment.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:employments)).to eq([employment])
    end
  end

  describe "GET #show" do
    it "assigns the requested employment as @employment" do
      employment = Employment.create! valid_attributes
      get :show, {:id => employment.to_param}, valid_session
      expect(assigns(:employment)).to eq(employment)
    end
  end

  describe "GET #new" do
    it "assigns a new employment as @employment" do
      get :new, {}, valid_session
      expect(assigns(:employment)).to be_a_new(Employment)
    end
  end

  describe "GET #edit" do
    it "assigns the requested employment as @employment" do
      employment = Employment.create! valid_attributes
      get :edit, {:id => employment.to_param}, valid_session
      expect(assigns(:employment)).to eq(employment)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Employment" do
        expect {
          post :create, {:employment => valid_attributes}, valid_session
        }.to change(Employment, :count).by(1)
      end

      it "assigns a newly created employment as @employment" do
        post :create, {:employment => valid_attributes}, valid_session
        expect(assigns(:employment)).to be_a(Employment)
        expect(assigns(:employment)).to be_persisted
      end

      it "redirects to the created employment" do
        post :create, {:employment => valid_attributes}, valid_session
        expect(response).to redirect_to(Employment.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved employment as @employment" do
        post :create, {:employment => invalid_attributes}, valid_session
        expect(assigns(:employment)).to be_a_new(Employment)
      end

      it "re-renders the 'new' template" do
        post :create, {:employment => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested employment" do
        employment = Employment.create! valid_attributes
        put :update, {:id => employment.to_param, :employment => new_attributes}, valid_session
        employment.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested employment as @employment" do
        employment = Employment.create! valid_attributes
        put :update, {:id => employment.to_param, :employment => valid_attributes}, valid_session
        expect(assigns(:employment)).to eq(employment)
      end

      it "redirects to the employment" do
        employment = Employment.create! valid_attributes
        put :update, {:id => employment.to_param, :employment => valid_attributes}, valid_session
        expect(response).to redirect_to(employment)
      end
    end

    context "with invalid params" do
      it "assigns the employment as @employment" do
        employment = Employment.create! valid_attributes
        put :update, {:id => employment.to_param, :employment => invalid_attributes}, valid_session
        expect(assigns(:employment)).to eq(employment)
      end

      it "re-renders the 'edit' template" do
        employment = Employment.create! valid_attributes
        put :update, {:id => employment.to_param, :employment => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested employment" do
      employment = Employment.create! valid_attributes
      expect {
        delete :destroy, {:id => employment.to_param}, valid_session
      }.to change(Employment, :count).by(-1)
    end

    it "redirects to the employments list" do
      employment = Employment.create! valid_attributes
      delete :destroy, {:id => employment.to_param}, valid_session
      expect(response).to redirect_to(employments_url)
    end
  end

end