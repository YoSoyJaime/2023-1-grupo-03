class CreatePublications < ActiveRecord::Migration[7.0]
  def change
    create_table :publications do |t|
      t.integer :user_id
      t.integer :class_id
      t.integer :likes_number
      t.string :contents
      t.string :description
      t.string :duration
      t.string :modality
      t.string :price

      t.timestamps
    end
  end
end
