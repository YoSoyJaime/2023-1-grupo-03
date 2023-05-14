class CreatePublications < ActiveRecord::Migration[7.0]
  def change
    create_table :publications do |t|
      t.integer :class_id
      t.integer :likes_number
      t.string :contents
      t.string :description
      t.string :duration
      t.string :modality
      t.string :price
      t.belongs_to :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
