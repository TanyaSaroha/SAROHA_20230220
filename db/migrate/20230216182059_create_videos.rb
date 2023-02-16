class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|

      t.string :title
      t.string :thumbnail_64
      t.string :thumbnail_128
      t.string :thumbnail_264
      t.string :file

      t.references :category, index: true

      t.timestamps
    end
  end
end
