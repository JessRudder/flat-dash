class Programmer < ActiveRecord::Base
  has_many :branches
  has_many :commits
  has_many :pull_requests
end
