Rails.application.routes.draw do
  get "/name_path", controller: "names", action: "name_method"
  get "/number_path", controller: "names", action: "number_guess"
end
