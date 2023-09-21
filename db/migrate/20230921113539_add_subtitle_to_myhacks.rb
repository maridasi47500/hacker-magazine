class AddSubtitleToMyhacks < ActiveRecord::Migration[7.0]
  def change
    add_column :myhacks, :subtitle, :text
  end
end
