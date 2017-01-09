class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :photo_main
      t.text :text_main
      t.string :photo_sub_1
      t.string :photo_sub_1_link
      t.string :photo_sub_2
      t.string :photo_sub_2_link
      t.string :photo_sub_3
      t.string :photo_sub_3_link

      t.timestamps
    end
  end
end
