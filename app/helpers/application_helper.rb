module ApplicationHelper
  def total_amount(cluster_starts)
    total_amount = 0
    cluster_starts.each do |cs|
      total_amount += cs.amount
    end
    total_amount
  end
end
