class CreateCsvs < ActiveRecord::Migration[7.0]
  def change
    create_table :csvs do |t|
      t.integer :user_id
      t.string :book_title
      t.string :book_author
      t.string :uuid
      t.string :publisher_name
      t.string :s3_url

      t.date :data_published

      t.timestamps
    end

    add_index :csvs, :uuid, unique: true
  end
end
