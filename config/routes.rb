Rails.application.routes.draw do
  get '/ask' => 'questions#ask'
  get '/answer' => 'questions#answer'
end
