class CreatePagevideos < ActiveRecord::Migration[5.0]
  def change
    create_table :pagevideos do |t|
      t.string :title
      t.text :text_main
      t.string :photo_main
      t.string :sub_videos_set

      t.timestamps
    end
  end
end
