class GithubData < ActiveRecord::Base

  attr_reader :client

  def self.client
    client = Octokit::Client.new(access_token: '66d769dc61eb46a4cbb031e6f7500f521e99ebc1', auto_traversal: true)
    client.auto_paginate = true
    client
  end

  def self.get_repos
    repos = self.client.org_repos("flatiron-school-students")
    repos.map do |repo|
      repo.full_name
    end
  end



  def self.make_pull_requests
    get_repos.each do |repo|
      self.client.pull_requests(repo).each do |pull|
        programmer = Programmer.find_or_create_by(name: pull.user.login)
        repository = Repository.find_or_create_by(name: pull.base.repo.name)
        PullRequest.find_or_create_by(pull_created_at: pull.created_at, pull_updated_at: pull.updated_at, programmer_id: programmer.id, repository_id: repository.id)
      end
    end
  end  

  # def self.make_pull_requests
  #   get_repos.each do |repo|
  #     self.client.pull_requests(repo).each do |pull|  
  #       find_or_create_by(repo_name: pull.base.repo.name, repo_full_name: pull.base.repo.full_name, user_login: pull.user.login, pull_created_at: pull.created_at, pull_updated_at: pull.updated_at)
  #     end
  #   end
  # end

end