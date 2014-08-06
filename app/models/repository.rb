class Repository < ActiveRecord::Base
  attr_reader :client

  def self.client
    client = Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'], auto_traversal: true)
    client.auto_paginate = true
    client
  end

  def client
    self.class.client
  end


  def self.get_repos
    repos = client.org_repos("flatiron-school-students")
    repos.map do |repo|
      repo.full_name
    end
  end

  # def self.make_repos
  #   repos = get_repos
  #   repos.map do |name|
  #     find_or_create_by(name: name)
  #   end
  # end

  # def get_pull_requests(repo)
  #   client.pull_requests(repo)
  # end

  def self.make_pull_requests
    get_repos.each do |repo|
      client.pull_requests(repo).each do |pull|
       # repo.get_pull_requests.each do |pull|
      find_or_create_by(repo_name: pull.base.repo.name, repo_full_name: pull.base.repo.full_name, user_login: pull.user.login, pull_created_at: pull.created_at, pull_updated_at: pull.updated_at)
      end
    end
  end
end

def self.pull_request_by_user
  
  name_collection = Repository.all.collect do |repo|
    repo.user_login
  end

  name_used = []
  pull_data = []
  
  name_collection.each do |name|
    if !name_used.include? name
      name_used << name
      pull_data << {:name => name, :count => name_collection.count(name)}
    end
  end
  pull_data
end


# repos.size
# repos.first.class
# repos.first.pull_requests
# repos.first
# repos.first.full_name  (This gives the full name)
# Octokit.pull_requests(“flatiron-school-students/rake-todo-ruby-004”)

# Octokit.pull_requests(repos.first.full_name)  repository name (This gives all pull request for pull)

# Octokit.pull_requests("flatiron-school-students/rake-todo-ruby-004").first.user.login (This gives user login)
# Octokit.pull_requests("flatiron-school-students/rake-todo-ruby-004").first.created_at (This gives user pull request creation date)
# Octokit.pull_requests("flatiron-school-students/rake-todo-ruby-004").first.updated_at (This gives user pull request creation date)
# Octokit.pull_requests("flatiron-school-students/rake-todo-ruby-004").first.base.repo.name
# Octokit.pull_requests("flatiron-school-students/rake-todo-ruby-004").first.base.repo.full_name





