json.extract! start, :id, :name, :amount, :created_at, :updated_at # rubocop:todo Layout/EndOfLine
json.url start_url(start, format: :json)
