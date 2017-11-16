Rails.application.routes.draw do
  get "/games_parameters" => "games#games_method"
  get "/numbers_parameters" => "games#guess_number_method"
end

 