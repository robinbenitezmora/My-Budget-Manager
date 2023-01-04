json.extract! cluster, :id, :name, :icon, :created_at, :updated_at # rubocop:todo Layout/EndOfLine
json.url cluster_url(cluster, format: :json)
