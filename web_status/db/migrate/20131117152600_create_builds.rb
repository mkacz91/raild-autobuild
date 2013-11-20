class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.string :status, :limit => 16
      t.datetime :started_at
      t.integer :svn_revision
      t.string :trigger_mode, :limit => 16
    end
  end
end
