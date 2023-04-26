class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.integer :user_emit_id
      t.integer :user_recive_id
      t.string :status

      t.timestamps
    end
  end
end
