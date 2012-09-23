Rails.application.routes.draw do

  mount Admin::Engine => "/admin", as: "admin"

end
