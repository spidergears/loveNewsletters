class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :number
      t.string :url
      t.string :raw_file_path
      t.string :parsed_file_path
      t.references :newsletter, index: true, foreign_key: true
      t.date :date_published

      t.timestamps null: false
    end
  end
end
