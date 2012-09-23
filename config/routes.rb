Admin::Engine.routes.draw do
  get "/admin" => "admin#index"
  root to: "admin#index"
end
