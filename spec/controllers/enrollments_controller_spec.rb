require 'rails_helper'

RSpec.describe EnrollmentsController, type: :controller do  

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    it "assigns a new enrollment as @enrollment" do
      get :new
      expect(assigns(:enrollment)).to be_a_new(Enrollment)
    end

    it "assigns a list of students" do
      students = Student.all

      get :new
      expect(assigns(:students)).to eq(students)
    end

    it "assigns a list of courses" do
      courses = Course.all

      get :new
      expect(assigns(:courses)).to eq(courses)
    end
  end

end
