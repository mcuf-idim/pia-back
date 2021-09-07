Rails.application.routes.draw do
  use_doorkeeper if ENV['ENABLE_AUTHENTICATION'].present?
  get '/info', to: 'application#info'

  resources :users do
    collection do
      get ':id/unlock_access/:uuid', to: 'users#check_uuid'
    end
  end
  
  resources :pias do
    collection do
      get 'example'
    end
    member do
      post 'duplicate'
    end
    resources :answers
    resources :comments
    resources :evaluations
    resources :measures
    resources :revisions, except: :update
    resources :attachments do
      collection do
        get '/signed', to: 'attachments#signed'
      end
    end
    collection do
      post '/import', to: 'pias#import'
    end
  end
  resources :structures
  resources :knowledge_bases do
    resources :knowledges
  end
end
