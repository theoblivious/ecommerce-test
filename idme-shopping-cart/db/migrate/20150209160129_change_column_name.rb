class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :items , :item_id, :item_profile
  end
end
