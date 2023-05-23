class ExecutiveReportsController < ApplicationController
  before_action :set_executive_report, only: %i[ show edit update destroy ]

  # GET /executive_reports or /executive_reports.json
  def index
    @executive_reports = ExecutiveReport.all
  end

  # GET /executive_reports/1 or /executive_reports/1.json
  def show
  end

  # GET /executive_reports/new
  def new
    @executive_report = ExecutiveReport.new
  end

  # GET /executive_reports/1/edit
  def edit
  end

  # POST /executive_reports or /executive_reports.json
  def create
    @executive_report = ExecutiveReport.new(executive_report_params)

    respond_to do |format|
      if @executive_report.save
        format.html { redirect_to executive_report_url(@executive_report), notice: "Executive report was successfully created." }
        format.json { render :show, status: :created, location: @executive_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @executive_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /executive_reports/1 or /executive_reports/1.json
  def update
    respond_to do |format|
      if @executive_report.update(executive_report_params)
        format.html { redirect_to executive_report_url(@executive_report), notice: "Executive report was successfully updated." }
        format.json { render :show, status: :ok, location: @executive_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @executive_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /executive_reports/1 or /executive_reports/1.json
  def destroy
    @executive_report.destroy

    respond_to do |format|
      format.html { redirect_to executive_reports_url, notice: "Executive report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_executive_report
      @executive_report = ExecutiveReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def executive_report_params
      params.fetch(:executive_report, {})
    end
end
