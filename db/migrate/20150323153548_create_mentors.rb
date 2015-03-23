class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.text :name
      t.text :organization
      t.text :phone_number
      t.boolean :is_remote
      t.integer :tier
      t.text :twitter

      t.timestamps
    end
  end
end
