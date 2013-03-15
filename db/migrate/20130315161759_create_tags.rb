class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag
      t.references :statuses

      t.timestamps
    end
    add_index :tags, :statuses_id
  end
end
