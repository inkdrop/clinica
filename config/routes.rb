Clinica::Application.routes.draw do

  devise_for :users, :skip => :registrations
  resources :users, :only => [:edit, :update]

  scope(:path_names => { :new => "nova", :edit => "editar" }) do
    resources :questions, :path => "perguntas"
  end
  
  scope(:path_names => { :new => "novo", :edit => "editar" }) do
    resources :subjects, :path => "temas" do
      resources :topics, :path => "topicos"
    end
  end

  resources :contacts do
    post 'mult_destroy', :on => :collection
  end
  
  match "contato" => "contacts#new"
  match "users/edit" => "users#edit"

  root :to => "home#index"
  get "home/index"

end
