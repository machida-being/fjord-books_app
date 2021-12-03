# frozen_string_literal: true

class UsersController < ApplicationController
  def list
    @users = User.page(params[:page]).per(3)
  end

  def details
    @user = User.find(params[:id])
  end
end
