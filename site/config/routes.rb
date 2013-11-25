Site::Application.routes.draw do
    resources :stories

    root "intro#index"
end
