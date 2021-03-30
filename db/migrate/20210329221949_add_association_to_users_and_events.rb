class AddAssociationToUsersAndEvents < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :creator, class_name: "User"
  end
end
