class CreatePhotos < ActiveRecord::Migration[7.1]
  def change
    create_table :photos do |t|
      t.text :caption
      t.integer :like
      t.integer :dislike

      t.timestamps
    end
  end
end
