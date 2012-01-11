class SecretController < ApplicationController
  http_basic_authenticate_with :name => "sandos", :password => "mom082011"
  def index
  end
end


