class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.text :description
      t.string :image_path
      t.string :image_extension
      t.string :detail
      t.string :wiki
      t.string :comic_link

      t.timestamps
    end
  end
end
