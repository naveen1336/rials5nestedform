class AddColumnUserFromLicense < ActiveRecord::Migration[5.0]
  def change
    add_reference :licenses, :user, foreign_key: true
  end
end
