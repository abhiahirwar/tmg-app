require 'rails_helper'

RSpec.describe "VicStudents", type: :request do
  describe "GET /vic_students" do
    it "works! (now write some real specs)" do
      get vic_students_path
      expect(response).to have_http_status(200)
    end
  end
end
