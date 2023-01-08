class AddUserRefToClusters < ActiveRecord::Migration[7.0]
  def change
    add_reference :clusters, :user, null: false, foreign_key: true
  end
end
