class StudentsController < ApplicationController
  include PermissionsConcern
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :authenticate_student!, only: [:new]
  #before_action :authenticate_admin!, only: [:destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
    @user = User.all

  end

  # GET /students/1
  # GET /students/1.json
  def show
    #@user = User.find(params[:id])
  end

  # GET /students/new
  def new
    @student = Student.new
    @students = Student.all
    @users = User.all
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = current_user.students.create(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Registro Exitoso.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if current_user.is_admin?
        if @student.update(student_params_spcial)
          format.html { redirect_to @student, notice: 'Status de Beca Establecida con Exito.' }
          format.json { render :show, status: :ok, location: @student }
        else
          format.html { render :edit }
          format.json { render json: @student.errors, status: :unprocessable_entity }
        end
      else
        if @student.update(student_params)
          format.html { redirect_to @student, notice: 'Actualizacion Exitosa.' }
          format.json { render :show, status: :ok, location: @student }
        else
          format.html { render :edit }
          format.json { render json: @student.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
=begin
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Registro eliminado con exito.' }
      format.json { head :no_content }
    end
  end
=end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
        @student = Student.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_params
      params.require(:student).permit(:document, :name, :last_name, :age, :date_of_birth, :email, :gender, :marital_status, :nationality, :number_phone, :country, :state, :city, :address, :career, :reason,:photo)
    end

    def student_params_spcial
      params.require(:student).permit(:scholarship_status)
    end
end
