class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :user_id, null: false
      t.boolean :default, null: false
      t.string :card_name, null: false
      t.string :name, null: false
      t.string :nickname
      t.string :email
      t.string :phone


      t.timestamps
    end
  end
end
