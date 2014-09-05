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
    Programmer.includes(:repositories).all.each do |prog|
      prog.repositories.each do |repo|
        if repo_exists?(repo)
          repository_array << ["#{prog.name}/#{repo.name}", prog.id, repo.id]
        end
      # repository_array << ["#{prog.name}/#{repo.name}", prog.id, repo.id]
      end
    end
    repository_array
  end

  # method to check if repository exists
  def self.repo_exists?(repo)
    GithubData.client.repository?(repo)
  end

  def self.make_branches 
    make_repo_full_names.each do |repo|
      branch_name = GithubData.client.branches(repo[0])
      if branch_name.length > 1 
        find_or_create_by(name: branch_name.last.name, programmer_id: repo[1] , repository_id: repo[2] )
      else 
        # find_or_create_by(student_repo_name: repo_name, branch: branch_name.last.name)
      end
    end  
  end  

end
