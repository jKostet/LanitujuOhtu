class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.string :journal
      t.integer :year

      t.timestamps null: false
    end
  end
end
