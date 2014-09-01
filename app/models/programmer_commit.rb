class ProgrammerCommit < ActiveRecord::Base
  belongs_to :programmer
  belongs_to :commit
end
