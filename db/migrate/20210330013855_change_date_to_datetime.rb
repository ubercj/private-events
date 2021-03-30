class ChangeDateToDatetime < ActiveRecord::Migration[6.1]
  def up
    change_column :events, :date, "date USING date::timestamp without time zone"
  end

  def down
    chagne_column :events, :date, :string
  end
end
