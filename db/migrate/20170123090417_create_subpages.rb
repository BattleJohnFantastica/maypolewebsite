class CreateSubpages < ActiveRecord::Migration[5.0]
  def change
    create_table :subpages do |t|
      t.string :photo_link
      t.string :photo_title

      t.timestamps
    end
  end
end
