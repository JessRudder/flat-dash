class PullRequestController < ApplicationController

  def index
    def solari_pull_semester
      json = PullRequest.top_pull_requests().to_json

      render json: json, callback: params[:callback]
    end
  end

  def week
    def solari_pull_week
      json = PullRequest.this_week_pull_requests().to_json

      render json: json, callback: params[:callback]
    end
  end

  def day
    def todays_pull_requests
      json = PullRequest.todays_pull_requests().to_json

      render json: json, callback: params[:callback]
    end
  end

end