class DownvotesController < VotingController
  def create
    current_user.downvote! @object
    redirect_back fallback_location: "/", allow_other_host: false
  end
end
