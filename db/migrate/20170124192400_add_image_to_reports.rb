class AddImageToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :image, :string
  end
end
