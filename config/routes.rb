Rails.application.routes.draw do
  
  root 'users#new'

  get 'sessions/index'

  get 'login' => 'sessions#new', as: 'login_page'

  post 'login' => 'sessions#create', as: 'login'

  get 'sessions/show'

  get 'sessions/edit'

  get 'sessions/update'

  get 'logout' => 'sessions#destroy', as: 'logout'

  get 'users/index' => 'users#index' 

  get 'register' => 'users#new', as: 'register_page'

  post 'register' => 'users#create', as: 'register'

  get 'showuser' => 'users#show', as: 'user'

  get 'users/edit' => 'users#edit', as: 'edit_user'

  patch 'users/update' => 'users#update', as: 'update_user'

  get 'users/delete'


  #LIKES STUFF

  get 'likes/index'

  get 'likes/new'

  get 'likes/create' => 'likes#create', as: 'save_recipe'

  post 'likes/create' => 'likes#create', as: 'add_recipe'

  get 'likes/show' => 'likes#show', as: 'saved_recipes'

  get 'likes/edit'

  get 'likes/update'

  delete 'likes/delete' => 'likes#delete', as: 'unsave_recipe'

# RECIPES

  get 'recipes/index' => 'recipes#index', as: "index"

  get 'recipes/new' => 'recipes#new', as: "find_recipes"

  post 'recipes/new' => 'recipes#new', as: "search_recipes"

  get 'recipes/create' 

  post 'recipes/show' => 'recipes#show', as: 'show_recipe'

  get 'recipes/edit'

  get 'recipes/update'

  delete 'recipes/delete'

#MEALS 

  get 'meals/index'

  get 'meals/new'

  post 'meals/create' => 'meals#create', as: 'add_meal'

  get 'meals/show' 

  get 'meals/edit'

  get 'meals/update'

  delete 'meals/delete' => 'meals#delete', as: 'delete_meal'

 #MEALPLAN
 
  get 'mealplan/index' => 'mealplan#index', as: 'mealplans'

  get 'mealplan/new' => 'mealplan#new', as: 'start_mealplan'

  post 'mealplan/new' => 'mealplan#new', as: 'new_mealplan'

  post 'mealplan/create' => 'mealplan#create', as: 'create_mealplan'

  get 'mealplan/show' 

  get 'mealplan/edit'

  get 'mealplan/update'

  delete 'mealplan/delete' 

#ITEMS

  get 'items/index'

  get 'items/new'

  get 'items/create' => 'items#create', as: 'create_items'

  get 'items/show' 

  get 'items/edit'

  get 'items/update'

  delete 'items/delete'

  #INGREDIENTS

  get 'ingredients/index'

  get 'ingredients/new'

  get 'ingredients/create' => 'ingredients#create', as: "add_ingredient"

  get 'ingredients/show' 

  get 'ingredients/edit'

  get 'ingredients/update'

  delete 'ingredients/delete'

end
