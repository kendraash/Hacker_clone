class DefaultPointsLink < ActiveRecord::Migration
  def change
    change_column_default(:links, :points, 0)
  end
end
