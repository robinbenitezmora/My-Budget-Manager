class AddAssociationReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :associations, :start, null: false, foreign_key: true
    add_reference :associations, :cluster, null: false, foreign_key: true
  end
end
