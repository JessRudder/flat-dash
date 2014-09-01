class Programmer < ActiveRecord::Base
  has_many :programmer_commits
  has_many :commits, through: :programmer_commits
  has_many :programmer_repositories
  has_many :repositories, through: :programmer_repositories
end
