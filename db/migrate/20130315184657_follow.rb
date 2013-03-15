class Follow < ActiveRecord::Migration
  def up
  	  	create_table :follow, :id=>false do |t|
  			t.references "follower", :null => false
  			t.references "followee", :null => false
  		end
  end
  add_index :follower_followee, ["status_id", "tag_id"]

  def down
  end
end
