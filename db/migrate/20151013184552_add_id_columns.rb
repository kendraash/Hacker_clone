class AddIdColumns < ActiveRecord::Migration
  def change
    add_column :comments, :link_id, :int
  end
end
