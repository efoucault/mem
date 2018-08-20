class AddUserToWatches < ActiveRecord::Migration[5.2]
  def change
    add_reference :watches, :user, foreign_key: true
  end
end
