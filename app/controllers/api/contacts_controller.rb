class Api::ContactsController < ApplicationController

  def index
    @contacts = Contact.all

    render 'index.json.jb'
  end

  def create
    @contact = Contact.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
    )

    render 'show.json.jb'
  end

  def show
    @contact = Contact.find_by(id: params[:id])

    render "show.json.jb"

  end


end
