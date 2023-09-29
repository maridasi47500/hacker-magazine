class AddMyscriptToProgramminglanguage < ActiveRecord::Migration[7.0]
  def change
    add_column :programminglanguages, :myscript, :text
  end
end
