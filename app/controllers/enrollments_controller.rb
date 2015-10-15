class EnrollmentsController < ApplicationController
  def new    
    @enrollment = Enrollment.new
  end

  def create
    @enrollment = Enrollment.new enrollment_params

    if @enrollment.save
      redirect_to root_path, notice: 'Enrollment was successfully created.'
    else      
      render :new
    end
  end

  private

  def enrollment_params
    params.require(:enrollment).permit(:student_id, :course_id, :entry_at)
  end
end
