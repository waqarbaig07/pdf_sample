class CreateCsvUploads < ActiveRecord::Migration
  def change
    create_table :csv_uploads do |t|
      t.text :uploads
      t.timestamps
    end
  end
end
