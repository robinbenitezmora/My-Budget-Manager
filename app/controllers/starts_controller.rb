class StartsController < ApplicationController
  before_action :set_start, only: %i[ show edit update destroy ]

  # GET /starts or /starts.json
  def index
    @starts = Start.all
  end

  # GET /starts/1 or /starts/1.json
  def show
  end

  # GET /starts/new  
  def new
    @start = Start.new
  end

  # GET /starts/1/edit  
  def edit
  end

  # POST /starts or /starts.json
  def create
    @start = Start.new(start_params)

    respond_to do |format|
      if @start.save
        format.html { redirect_to start_url(@start), notice: "Start was succesfully created" }
        format.json { render :show, status: :created, location: @start }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @start.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /starts/1 or /starts/1.json
  def update
    respond_to do |format|
      if @start.update(start_params)
        format.html { redirect_to start_url(@start), notice: "Start was succesfully updated" }
        format.json { render :show, status: :ok, location: @start }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @start.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /starts/1 or /starts/1.json
  def destroy
    @start.destroy
    respond_to do |format|
      format.html { redirect_to starts_url, notice: "Start was succesfully destroyed" }
      format.json { head :no_content }
    end
  end
end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_start
    @start = Start.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def start_params
    params.require(:start).permit(:name, :amount)
  end

end
