class Commit < ActiveRecord::Base
  belongs_to :branch
  has_one :programmer, through: :branch
  has_one :repository, through: :branch

  #This method finds the top 10 users the highest commit count
  def self.top_commits_by_user
    commit_array = []
    commit_dates = Commit.joins(:programmer).group("programmers.name").order("commit_created_at DESC").maximum(:commit_created_at)
    top_user_commits = Commit.joins(:programmer).group("programmers.name").order("count_all DESC").calculate(:count, :all)
    users = top_user_commits.keys
    count = top_user_commits.values
    last_commit = commit_dates
    users.each_with_index do |user, i|
      commit_array << ({:sDate => last_commit[user].strftime("%F"), :sTime => last_commit[user].strftime("%R"), :sUsername => user, :sTimeFrame => "week", :nCommits => count[i]})
    end
    commit_array
  end

  #This method find the lastest commits by user and shows their commit message
  def self.latest_commit_messages
    commit_user = Commit.group(:branch_id).select(:id).order("commit_created_at DESC").limit(15).maximum(:commit_created_at)
    commit_array = []
    commit_user.each do |user,date|
       messages = Commit.where("commit_created_at >= ?", date).find_by "programmer_id = ?", user
       commit_array << ({:sDate => date.strftime("%F"), :sTime =>date.strftime("%R"), :sUsername => messages.programmer.name, :sCommitMessage => messages.commit_message, :sTimeFrame => "EVERYONE"})
    end
    commit_array
  end

  # This method picks one user at a time and shows their last 10 commit messages
  def self.user_commits
    commit_array = []
    programmer_ids = Commit.join(:programmer).pluck(programmer.name).uniq 
    login = programmer_ids.sample
    messages = Commit.where("programmer_id = ?", login).order("commit_created_at DESC").select(:programmer_id, :commit_message, :commit_created_at).limit(15)
    messages.each do |message|
      commit_array << ({:sDate => message.commit_created_at.strftime("%F"), :sTime =>message.commit_created_at.strftime("%R"),:sUsername => message.programmer_id, :sCommitMessage => message.commit_message, :sTimeFrame => message.programmer_id})
    end
    commit_array
  end

end


#Commit.client.list_commits("denineguy/validating-user-forms-ruby-005", 'working')
#The top 10 total commit counts by user
#The 10 lastest commits by user and the messages
#The 10 lastest commits by user and count 
#The latest commits for an individual and their messages  this one needs to be randomized