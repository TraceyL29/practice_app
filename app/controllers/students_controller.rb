class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all

  end

  # GET /students/1
  # GET /students/1.json
  def show
    @list= @student.lists
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
  end

  def update
      @student = Student.find(params[:id])
      if @student.update(student_params)
          flash[:notice] = "Student #{@student.name} was successfully updated!"
          redirect_to lists_path
      else
          render 'edit'
      end
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)
      if @student.save
        flash[:notice]="Student #{@student.name} created!"
        redirect_to lists_path(@list)
      else
        render 'new'
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
      @student = Student.find(params[:id])
      if @student.update(student_params)
          flash[:notice] = "Student #{@student.name} was successfully updated!"
          redirect_to lists_path
      else
          render 'edit'
      end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.'}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_params
      params.require(:student).permit(:name, :email, :password)

    end
