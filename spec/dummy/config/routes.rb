Rails.application.routes.draw do

  mount Admin::Engine => "/admin", as: "admin"

  root to: "dummy#index"
end
