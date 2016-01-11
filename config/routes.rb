Rails.application.routes.draw do
  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end

    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end

  get 'categories/index'

  get 'categories/new'

  get 'categories/show'

  get 'categories/update'

  get 'categories/destroy'

  root 'articles#index'

  get 'articles/index'
  get 'about' => 'articles#about'
  get 'articles' => 'articles#index'

  #POST Renvoit les informations du formulaire --> create
  post 'articles' => 'articles#create'
  

  get 'articles/:id' => 'articles#show'

  #PATCH pour la partie Formulaire de Modif du livre
  #dans le view/livres/show    ctrl livres action update
  patch 'articles/:id' => 'articles#update'

  #Routes pour la méthode DELETE - Boutons de suppresion du livre
  delete 'articles/:id' => 'articles#destroy'

  #partie pour les catégories
  get 'categories' => 'categories#index'

end
