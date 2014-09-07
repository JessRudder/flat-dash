class CreateCommits < ActiveRecord::Migration
  def change
    create_table :commits do |t|
      t.text :commit_message
      t.datetime :commit_created_at
      t.references :branch, index: true
    end
  end
end
