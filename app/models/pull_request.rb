class PullRequest < ActiveRecord::Base
  belongs_to :programmer
  belongs_to :repository

#sqlite3 arel method 
  def self.top_pull_requests 
    pull_counts_array = []
    pull_dates = Repository.select(:user_login).group(:user_login).order("pull_updated_at DESC").maximum(:pull_updated_at)
    student_pulls = Repository.group(:user_login).order("count_all DESC").calculate(:count, :all)
    users = student_pulls.keys
    count = student_pulls.values
    last_pull = pull_dates
    users.each_with_index do |user, i|
      pull_counts_array << ({:sDate => last_pull[user].strftime("%F"), :sTime => last_pull[user].strftime("%R"), :sUsername => "@"+ user, :sTimeFrame => "SEMESTER", :nPullRequests => count[i], :name => user, :value => count[i]})     
    end
    pull_counts_array
  end

  # sqlite3 arel method
  def self.todays_pull_requests
    pull_counts_array = []
    pull_dates = Repository.group(:user_login).order("pull_updated_at DESC").maximum(:pull_updated_at)
    student_pulls = Repository.where("pull_updated_at > ?", 1.days.ago).group(:user_login).order("count_all DESC").calculate(:count, :all)
    users = student_pulls.keys
    count = student_pulls.values
    last_pull = pull_dates
    users.each_with_index do |user, i|
      # changes data for todays pulls
        pull_counts_array << ({:sDate => last_pull[user].strftime("%F"), :sTime => last_pull[user].strftime("%R"), :sUsername => "@"+ user, :sTimeFrame => "DAY", :nPullRequests => count[i], :name => user, :value => count[i]})     
    end
    pull_counts_array
  end 

  # sqlite3 arel method
  def self.week_ago_pull_requests
    pull_counts_array = []
    pull_dates = Repository.group(:user_login).order("pull_updated_at DESC").maximum(:pull_updated_at)
    student_pulls = Repository.where("pull_updated_at > ?", 1.weeks.ago).group(:user_login).order("count_all DESC").calculate(:count, :all)
    users = student_pulls.keys
    count = student_pulls.values
    last_pull = pull_dates
    users.each_with_index do |user, i|
      # changes data for week pulls
      pull_counts_array << ({:sDate => last_pull[user].strftime("%F"), :sTime => last_pull[user].strftime("%R"), :sUsername => "@"+ user, :sTimeFrame => "WEEK", :nPullRequests => count[i], :name => user, :value => count[i]})     
    end
    pull_counts_array
  end
end
