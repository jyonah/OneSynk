class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :card_id, null: false
      t.integer :group_id, null: false

      t.timestamps
    end
  end
end
