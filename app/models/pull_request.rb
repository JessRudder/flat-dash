class PullRequest < ActiveRecord::Base
  belongs_to :programmer
  belongs_to :repository

  #sqlite3 arel method 
  def self.top_pull_requests
    pull_counts_array = []
    pull_dates = PullRequest.select(:programmer_id).group(:programmer_id).order("pull_updated_at DESC").maximum(:pull_updated_at)
    programmer_pulls = PullRequest.group(:programmer_id).order("count_all DESC").calculate(:count, :all)
    users = programmer_pulls.keys
    count = programmer_pulls.values
    users.each_with_index do |user, i|
      pull_counts_array << ({:sTime => pull_dates[user].strftime("%R"), :sUsername => Programmer.find(user).name, :sTimeFrame => "SEMESTER", :nPullRequests => count[i], :name => Programmer.find(user).name, :value => count[i]})
    end
    pull_counts_array
  end

  # sqlite3 arel method
  def self.todays_pull_requests
    pull_counts_array = []
    pull_dates = PullRequest.select(:programmer_id).group(:programmer_id).order("pull_updated_at DESC").maximum(:pull_updated_at)
    programmer_pulls = PullRequest.where("pull_updated_at > ?", 1.days.ago).group(:programmer_id).order("count_all DESC").calculate(:count, :all)
    users = programmer_pulls.keys
    count = programmer_pulls.values
    users.each_with_index do |user, i|
      # changes data for todays pulls
        pull_counts_array << ({:sDate => pull_dates[user].strftime("%F"), :sTime => pull_dates[user].strftime("%R"), :sUsername => Programmer.find(user).name, :sTimeFrame => "DAY", :nPullRequests => count[i], :name => Programmer.find(user).name, :value => count[i]})     
    end
    pull_counts_array
  end 

  # sqlite3 arel method
  def self.this_week_pull_requests
    pull_counts_array = []
    pull_dates = PullRequest.select(:programmer_id).group(:programmer_id).order("pull_updated_at DESC").maximum(:pull_updated_at)
    programmer_pulls = PullRequest.where("pull_updated_at > ?", 7.days.ago).group(:programmer_id).order("count_all DESC").calculate(:count, :all)
    users = programmer_pulls.keys
    count = programmer_pulls.values
    users.each_with_index do |user, i|
      # changes data for week pulls
      pull_counts_array << ({:sDate => pull_dates[user].strftime("%F"), :sTime => pull_dates[user].strftime("%R"), :sUsername => Programmer.find(user).name, :sTimeFrame => "WEEK", :nPullRequests => count[i], :name => Programmer.find(user).name, :value => count[i]})     
    end
    pull_counts_array
  end
end
