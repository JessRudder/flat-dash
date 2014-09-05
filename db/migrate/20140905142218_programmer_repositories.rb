class ProgrammerRepositories < ActiveRecord::Migration
  def change
    create_table :programmer_repositories do |t|
      t.references :programmer, index: true
      t.references :repository, index: true
      t.timestamps
    end
  end
end
