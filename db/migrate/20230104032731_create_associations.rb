class CreateAssociations < ActiveRecord::Migration[7.0]
  def change
    create_table :associations do |t|

      t.timestamps
    end
  end
end
