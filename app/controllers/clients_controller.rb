class ClientsController < ApplicationController
  http_basic_authenticate_with :name => "sandos", :password => "mom082011"
  def index
    @clients = Client.all
  end
  
  def show
    @client = Client.find(params[:id])
  end
  
  def new
    @client = Client.new
  end
  
  def create
    @client = Client.new(params[:client])
    @client.save
    redirect_to clients_path
  end
  
  def edit
    @client = Client.find(params[:id])
  end
  
  def update
    @client = Client.find(params[:id])
    @client.update_attributes(params[:client])
    redirect_to @client
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path
  end
end
