class DownvotesController < VotingController
  def create
    respond_to do |format|
      current_user.downvote! @object
      format.html { render @object }
    end
  end
end
