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
        ProgrammerRepository.find_or_create_by(programmer_id: programmer.id, repository_id: repository.id)
        PullRequest.find_or_create_by(pull_created_at: pull.created_at, pull_updated_at: pull.updated_at, programmer_id: programmer.id, repository_id: repository.id)
      end
    end
  end

  def self.student_repos
    Branch.select(:student_repo_name, :branch).to_a.map(&:serializable_hash)
  end

  #This methods finds all of the commits for each repository and saves it to the database
  def self.make_commit_list
    student_repos.collect do |student|
      client.commits(student["student_repo_name"], student["branch"]).each do |commit_list|
        # if commit_list.author
        #   Commit.find_or_create_by(commit_message: commit_list.commit.message, commit_created_at: commit_list.commit.committer.date, user_login: commit_list.author.login, name: commit_list.commit.author.name)
        # end
      end
    end
  end

end