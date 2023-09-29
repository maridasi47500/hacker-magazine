class AddProgramminglanguageIdToMyotherscripts < ActiveRecord::Migration[7.0]
  def change
    add_column :myotherscripts, :programminglanguage_id, :integer
  end
end
