class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|

      t.string :title
      t.string :file

      t.references :category, index: true

      t.timestamps
    end
  end
end
