class DashboardController < ApplicationController
  protect_from_forgery except: :solari_data
  def index
    def solari_pull_semester
      json_for_pulls("top_pull_requests")
    end
  end

  def week
    def solari_pull_week
      json_for_pulls("this_week_pull_requests")
    end
  end

  def day
    def todays_pull_requests
      json_for_pulls("todays_pull_requests")
    end
  end

  def commits
    def latest_commit_messages
      json = Commit.latest_commit_messages().to_json

      render json: json, callback: params[:callback]
    end
  end

  def highlight
    def user_commits
      json = Commit.user_commits().to_json

      render json: json, callback: params[:callback]
    end
  end  

  def heart
    def list_of_users
      json = Repository.list_of_users().to_json

      render json: json, callback: params[:callback]
    end
  end

  private
  def json_for_pulls(time_frame)
    json = eval("PullRequest.#{time_frame}().to_json")

    render json: json, callback: params[:callback]
  end

end