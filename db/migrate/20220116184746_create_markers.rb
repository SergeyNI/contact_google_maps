class CreateMarkers < ActiveRecord::Migration[6.1]
  def change
    create_table :markers do |t|
      t.string :name
      t.string :description
      t.string :image
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
