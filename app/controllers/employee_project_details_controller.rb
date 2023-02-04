class EmployeeProjectDetailsController < ApplicationController
  before_action :set_employee_project_detail, only: %i[ show edit update destroy ]

  # GET /employee_project_details or /employee_project_details.json
  def index
    @employee_project_details = EmployeeProjectDetail.all
  end

  # GET /employee_project_details/1 or /employee_project_details/1.json
  def show
  end

  # GET /employee_project_details/new
  def new
    @employee_project_detail = EmployeeProjectDetail.new
  end

  # GET /employee_project_details/1/edit
  def edit
  end

  # POST /employee_project_details or /employee_project_details.json
  def create
    @employee = Employee.find(employee_project_detail_params[:employee])
    @project_detail = ProjectDetail.find(employee_project_detail_params[:project_detail])
    @employee_project_detail = EmployeeProjectDetail.new(employee: @employee, project_detail: @project_detail)

    respond_to do |format|
      if @employee_project_detail.save
        format.html { redirect_to employee_project_detail_url(@employee_project_detail), notice: "Employee project detail was successfully created." }
        format.json { render :show, status: :created, location: @employee_project_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee_project_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_project_details/1 or /employee_project_details/1.json
  def update
    respond_to do |format|
      if @employee_project_detail.update(employee_project_detail_params)
        format.html { redirect_to employee_project_detail_url(@employee_project_detail), notice: "Employee project detail was successfully updated." }
        format.json { render :show, status: :ok, location: @employee_project_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee_project_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_project_details/1 or /employee_project_details/1.json
  def destroy
    @employee_project_detail.destroy

    respond_to do |format|
      format.html { redirect_to employee_project_details_url, notice: "Employee project detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_project_detail
      @employee_project_detail = EmployeeProjectDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_project_detail_params
      params.require(:employee_project_detail).permit(:employee, :project_detail)
    end
end
