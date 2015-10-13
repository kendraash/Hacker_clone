class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.column :title, :string
      t.column :url, :string
      t.column :points, :int

      t.timestamps
    end
  end
end
