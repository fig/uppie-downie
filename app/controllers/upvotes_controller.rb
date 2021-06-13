class UpvotesController < VotingController
  def create
    current_user.upvote! @object
    redirect_back fallback_location: "/", allow_other_host: false
  end
end
