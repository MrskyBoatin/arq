class CreateHams < ActiveRecord::Migration
  def change
    create_table :hams do |t|

      t.timestamps
    end
  end
end
