Rails.application.routes.draw do
  resources :orders, :order_details, :menus, :category_menus, :categories
end
