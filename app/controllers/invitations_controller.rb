class InvitationsController < ApplicationController

  def index
    @invitations = Invitation.all
  end

  def show
    @invitation = Invitation.find_by_id(params[:id])
  end

  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new
    @invitation.host_id = params[:host_id]
    @invitation.name = params[:name]
    @invitation.email = params[:email]
    @invitation.rsvp = params[:rsvp]
    
    if @invitation.save
            redirect_to invitations_url
          else
      render 'new'
    end
  end

  def edit
    @invitation = Invitation.find_by_id(params[:id])
  end

  def update
    @invitation = Invitation.find_by_id(params[:id])
    @invitation.host_id = params[:host_id]
    @invitation.name = params[:name]
    @invitation.email = params[:email]
    @invitation.rsvp = params[:rsvp]
    
    if @invitation.save
            redirect_to invitations_url
          else
      render 'edit'
    end
  end

  def destroy
    @invitation = Invitation.find_by_id(params[:id])
    @invitation.destroy
        redirect_to invitations_url
      end
end
