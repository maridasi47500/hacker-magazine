class CreateMyscripts < ActiveRecord::Migration[7.0]
  def change
    create_table :myscripts do |t|
      t.string :title
      t.text :content
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
