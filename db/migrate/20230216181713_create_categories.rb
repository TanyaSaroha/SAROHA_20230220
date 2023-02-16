class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end

    ['Exercise', 'Education', 'Recipe'].each{ |name| Category.create(name: name)}
  end
end
