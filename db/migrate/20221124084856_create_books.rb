class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.integer :csv_id
      t.string :title
      t.string :author
      t.string :uuid
      t.string :publisher_name
      t.date :data_published

      t.timestamps
    end

    add_index :books, :uuid, unique: true
  end
end
