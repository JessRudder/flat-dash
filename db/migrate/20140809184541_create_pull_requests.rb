class CreatePullRequests < ActiveRecord::Migration
  def change
    create_table :pull_requests do |t|
      t.datetime :pull_created_at
      t.datetime :pull_updated_at
      t.references :programmer, index: true
      t.references :repository, index: true
      t.timestamps
    end
  end
end
