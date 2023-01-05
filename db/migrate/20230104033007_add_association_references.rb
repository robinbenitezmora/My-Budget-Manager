class AddAssociationReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :associations, :start, null: false, foreign_key: { to_table: :clusters }
    add_reference :associations, :cluster, null: false, foreign_key: { to_table: :starts }
  end
end
