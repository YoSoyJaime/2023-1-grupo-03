class CreatePublications < ActiveRecord::Migration[7.0]
  def change
    create_table :publications do |t|
      t.integer :likes_number
      t.string :contents
      t.string :duration
      t.string :modality
      t.integer :price

      t.timestamps
    end
  end
end
