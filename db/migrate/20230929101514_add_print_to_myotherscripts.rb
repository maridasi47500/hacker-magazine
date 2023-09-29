class AddPrintToMyotherscripts < ActiveRecord::Migration[7.0]
  def change
    add_column :myotherscripts, :print, :text
  end
end
