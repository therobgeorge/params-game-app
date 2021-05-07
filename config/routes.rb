Rails.application.routes.draw do
  get "/name_path", controller: "names", action: "name_method"
  get "/number_path", controller: "names", action: "number_guess"
  get "/number_game/:guess", controller: "names", action: "guess"
  post "/post_guess", controller: "names", action: "post_guess"
  post "/login", controller: "names", action: "login"

end
