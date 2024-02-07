class AddPhotoIdToComment < ActiveRecord::Migration[7.1]
  def change
    add_column(:comments, :photo_id, :integer)
  end
end
