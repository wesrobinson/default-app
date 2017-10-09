class LeadsController < ApplicationController

  def create
    Lead.create!(create_params)

    respond_to do |f|
      f.html { redirect_to '/leads' }
      f.js
    end
  end

  protected

  def create_params
    params.permit(:name, :email, :subject, :message)
  end
end