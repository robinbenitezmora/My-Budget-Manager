class AssociationsController < ApplicationController
  before_action :set_association, only: %i[show edit update destroy]

  # GET /associations or /associations.json
  def index
    @associations = Association.all
  end

  # GET /associations/1 or /associations/1.json
  def show; end

  # GET /associations/new
  def new
    @association = Association.new
  end

  # GET /associations/1/edit
  def edit; end

  # POST /associations or /associations.json
  def create
    @association = Association.new(association_params)

    respond_to do |format|
      if @association.save
        format.html { redirect_to association_url(@association), notice: 'Relation was succesfully created.' }
        format.json { render :show, status: :created, location: @association }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @association.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /associations/1 or /associations/1.json
  def update
    respond_to do |format|
      if @association.update(association_params)
        format.html { redirect_to association_url(@association), notice: 'Relation was succesfully updated.' }
        format.json { render :show, status: :ok, location: @association }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @association.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associations/1 or /associations/1.json
  def destroy
    @association.destroy
    respond_to do |format|
      format.html { redirect_to associations_url, notice: 'Relation was succesfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_association
    @association = Association.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def association_params
    params.fetch(:association, {})
  end
end
