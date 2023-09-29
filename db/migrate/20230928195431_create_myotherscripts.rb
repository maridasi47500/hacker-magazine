class CreateMyotherscripts < ActiveRecord::Migration[7.0]
  def change
    create_table :hackmyotherscripts do |t|
      t.integer :myotherscript_id
      t.integer :myhack_id
      t.integer :myorder
    end
    create_table :myotherscripts do |t|
      t.string :title
      t.text :description
      t.string :filename
      t.integer :user_id

      t.timestamps
    end

  end
end
