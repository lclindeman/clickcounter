class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.integer :clicks

      t.timestamps
    end
  end
end
