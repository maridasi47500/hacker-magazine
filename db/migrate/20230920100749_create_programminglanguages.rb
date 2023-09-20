class CreateProgramminglanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :programminglanguages do |t|
      t.string :name
      t.text :myprogram

      t.timestamps
    end
    add_column :myscripts, :programminglanguage_id, :integer
  end
end
