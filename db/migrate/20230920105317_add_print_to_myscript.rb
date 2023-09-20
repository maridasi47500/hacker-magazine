class AddPrintToMyscript < ActiveRecord::Migration[7.0]
  def change
    add_column :myscripts, :print, :text
  end
end
