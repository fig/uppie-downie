class VotingController < ApplicationController
  before_action :set_object
  before_action :authenticate_user!

  def set_object
    @object = GlobalID::Locator.locate(params[:id])
  end
end
