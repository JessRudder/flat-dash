class Branch < ActiveRecord::Base
  belongs_to :programmer
  belongs_to :repository
  has_many :commits
  
  attr_reader :client

  def self.client
    GithubData.client
  end

  # this method creates the full name of the repos, may get rid of 
  def self.make_repo_full_names
    repository_array = []
    Programmer.all.each do |prog|
      prog.repositories.each do |repo|
        repository_array << "#{prog.name}/#{repo.name}"
      end
    end
    repository_array
  end

  #  # method to check if repository exists
  # def self.student_repos
  #   repo_array = []
  #   repo_total = make_repo_full_names.length
  #   make_repo_full_names.each_with_index do |repo_name, i|
  #     if client.repository?(repo_name)
  #       repo_array << repo_name
  #     end
  #   end
  #   repo_array
  # end

  def self.make_branches 
    student_repos.each do |repo_name|
      branch_name = client.branches(repo_name)
      if branch_name.length > 1 
        find_or_create_by(student_repo_name: repo_name, branch: branch_name.last.name)
      else 
        find_or_create_by(student_repo_name: repo_name, branch: branch_name.last.name)
      end
    end  
  end  

end
