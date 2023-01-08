class StartsController < ApplicationController
  before_action :set_start, only: %i[show edit update destroy]

  # GET /starts or /starts.json
  def index
    @cluster_starts = Starts.all.order('starts.created_at DESC').includes[:user]
  end

  # GET /starts/1 or /starts/1.json
  def show; end

  # GET /starts/new
  def new
    @start = Start.new
  end

  # GET /starts/1/edit
  def edit; end

  # POST /starts or /starts.json
  def create
    @start = Start.new(start_params)

    @start.author_id = current_user.id

    respond_to do |format|
      if @start.save
        @start_category = Association.create(start_id: @start.id, cluster_id: cluster_params[:cluster_id])
        format.html do
          redirect_to cluster_associations_path(@start_category.cluster_id), notice: 'Charge was successfully created.'
        end
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /starts/1 or /starts/1.json
  def destroy
    @start.destroy
    respond_to do |format|
      format.html { redirect_to starts_url, notice: 'Start was succesfully destroyed' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_start
    @start = Start.find(params[:id])
  end

  def cluster_params
    params.require(:start).permit(:cluster_id)
  end

  # Only allow a list of trusted parameters through.
  def start_params
    params.require(:start).permit(:name, :amount)
  end
end
