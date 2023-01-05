class AssociationsController < ApplicationController

  # GET /associations or /associations.json
  def index
    @associations = Association.all
    @cluster = Cluster.find(params[:cluster_id])
    @starts = @cluster.associations.includes(:start).map(&:start)
  end
end
