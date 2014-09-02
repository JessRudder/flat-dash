class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.text :name
      t.references :programmer, index: true
      t.references :repository, index: true
    end
  end
end