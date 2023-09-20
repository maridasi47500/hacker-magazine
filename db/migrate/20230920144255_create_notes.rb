class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.integer :myhack_id
      t.integer :user_id
      t.integer :note

      t.timestamps
    end
  end
end
