class CreateSubPages < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_pages do |t|
      t.string :photo_link
      t.string :photo_title

      t.timestamps
    end
  end
end
