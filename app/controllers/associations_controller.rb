class AssociationsController < ApplicationController
  def index
    @cluster = Cluster.find(params[:cluster_id])
    @starts = @cluster.associations.includes(:start).order('starts.created_at DESC').map(&:start)
  end
end
