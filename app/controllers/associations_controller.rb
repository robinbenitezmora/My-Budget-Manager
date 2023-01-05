class AssociationsController < ApplicationController

  def index
    @cluster = Cluster.find(params[:cluster_id])
    @starts = @cluster.associations.includes(:start).map(&:start)
  end
end
