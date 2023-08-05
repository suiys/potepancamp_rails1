class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.date :startdate
      t.date :enddate
      t.string :allday
      t.text :memo

      t.timestamps
    end
  end
end
