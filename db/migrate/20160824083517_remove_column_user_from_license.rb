class RemoveColumnUserFromLicense < ActiveRecord::Migration[5.0]
  




  def change
  	remove_column :licenses , :user_id
  	
  end
end
