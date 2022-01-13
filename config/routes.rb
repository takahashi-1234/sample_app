Rails.application.routes.draw do
  devise_for :admin,skip:[:passwords,], controllers:{
    registrations: 'admin/registrations',
    sessions: 'admin/sessions'
  }
  devise_for :customers,skip:[:passwords,], controllers:{
    registrations: 'public/registrations',
    sessions: 'public/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  scope module: :public do
    root to:'homes#top'
    resources:reviews,only:[:index,:create,:destroy]
    resources:tags,only:[:show]
    get 'question'=>'questions#show',as:'question'
    post 'result'=>'questions#result',as:'result'
  end
end
