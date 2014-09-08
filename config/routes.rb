Rails.application.routes.draw do
  root 'dashboard#index'


  # get '/data' => 'data#index'
  resources :data, only: [:index, :show]
  
  # get '/index.html' => 'dashboard#index' 
  get '/solari_pull_semester' => 'dashboard#solari_pull_semester'
  get '/solari_pull_week' => 'dashboard#solari_pull_week'
  get '/todays_pull_requests' => 'dashboard#todays_pull_requests'
  get '/latest_commit_messages' => 'dashboard#latest_commit_messages'
  get '/user_commits' => 'dashboard#user_commits'
  get '/list_of_users' => 'dashboard#list_of_users'

  get '/week' => 'dashboard#week'
  get '/day' => 'dashboard#day'
  get '/commits' => 'dashboard#commits'
  get '/highlight' => 'dashboard#highlight'
  get '/heart' => 'dashboard#heart'
  get '/about' => 'dashboard#about'

end
