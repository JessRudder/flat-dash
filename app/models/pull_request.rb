class PullRequest < ActiveRecord::Base
  belongs_to :programmer
  belongs_to :repository
end
