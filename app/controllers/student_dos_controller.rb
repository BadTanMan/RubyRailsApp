class StudentDosController < ApplicationController
  before_action :set_student_do, only: [:show, :edit, :update, :destroy]

  # GET /student_dos
  # GET /student_dos.json
  def index
    @student_dos = StudentDo.all
  end

  # GET /student_dos/1
  # GET /student_dos/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_do
      @student_do = StudentDo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_do_params
      params.require(:student_do).permit(:title, :notes)
    end
end
