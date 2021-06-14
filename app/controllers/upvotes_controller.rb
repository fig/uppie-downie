class UpvotesController < VotingController
  def create
    respond_to do |format|
      current_user.upvote! @object
      format.html { render @object }
    end
  end
end
