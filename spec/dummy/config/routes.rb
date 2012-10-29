Rails.application.routes.draw do

  mount Admin::Engine => "/admin", as: "admin"

  root to: "dummy#index"

  match "/sign_in" => "session#new", as: 'new_session'
end
