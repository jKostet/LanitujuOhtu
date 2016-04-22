class AddTags < ActiveRecord::Migration
  def change
    add_column :inproceedings, :tags, :string
    add_column :books, :tags, :string
    add_column :articles, :tags, :string
  end
end
