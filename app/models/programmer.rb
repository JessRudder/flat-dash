class Programmer < ActiveRecord::Base
  has_many :branches
  has_many :commits
  has_many :pull_requests
  has_many :programmer_repositories
  has_many :repositories, through: :programmer_repositories
end
