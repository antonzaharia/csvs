class CreateCsvs < ActiveRecord::Migration[7.0]
  def change
    create_table :csvs do |t|
      t.integer :user_id
      t.string :file

      t.timestamps
    end
  end
end
