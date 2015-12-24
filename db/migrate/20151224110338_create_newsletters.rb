class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :name
      t.string :url
      t.string :issues_path
      t.string :parser

      t.timestamps null: false
    end
  end
end
