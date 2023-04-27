class CreatePublications < ActiveRecord::Migration[7.0]
  def change
    create_table :publications do |t|
      t.integer :likes_number
      t.text :contents
      t.text :description
      t.string :duration
      t.string :modality
      t.string :price
      t.belongs_to :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
