class SessionsController < ApplicationController

	layout 'layout_login'

  def create 
    employee = Employee.find(params[:session][:id])

        log_in employee
        redirect_to employee
      end

    rescue ActiveRecord::RecordNotFound
      flash.now[:title] = "Error"
      flash.now[:notice] = "Access Denied: Invalid ID number"
      render 'new'
  end

  def destroy
    log_out
    redirect_to login_url
  end

  def new
  end

