class RenameColumnsOnMarkers < ActiveRecord::Migration[6.1]
  def change
    change_table :markers do |t| 
      
      t.rename :longitude, :lng
      t.rename :latitude, :lat
    end
    
  end
end
