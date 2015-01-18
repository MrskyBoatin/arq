class CreatePlayInfos < ActiveRecord::Migration
  def change
    create_table :play_infos do |t|

      t.timestamps
    end
  end
end
