class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :google_id, null: false
      t.string :name
      t.string :account_email

      t.timestamps
    end
  end
end
