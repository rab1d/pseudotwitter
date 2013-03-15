class CreateStatusesTagsJoin < ActiveRecord::Migration
  def up
  	create_table :statuses_tags, :id => false do |t|
  		t.integer "status_id"
  		t.integer "tag_id"
  	end
  	add_index :statuses_tags, ["status_id", "tag_id"]
  end

  def down
  	drop_table :admin_statuses_tags

  end
end
