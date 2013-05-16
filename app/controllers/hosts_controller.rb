class HostsController < ApplicationController

  def index
    @hosts = Host.all
  end

  def show
    @host = Host.find_by_id(params[:id])
  end

  def new
    @host = Host.new
  end

  def create
    @host = Host.new
    @host.user_id = params[:user_id]
    @host.event_id = params[:event_id]
    
    if @host.save
            redirect_to hosts_url
          else
      render 'new'
    end
  end

  def edit
    @host = Host.find_by_id(params[:id])
  end

  def update
    @host = Host.find_by_id(params[:id])
    @host.user_id = params[:user_id]
    @host.event_id = params[:event_id]
    
    if @host.save
            redirect_to hosts_url
          else
      render 'edit'
    end
  end

  def destroy
    @host = Host.find_by_id(params[:id])
    @host.destroy
        redirect_to hosts_url
      end
end
