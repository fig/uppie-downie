require "rails_helper"

RSpec.describe Post, type: :model do
  subject(:post) { create :post }

  let(:user) { create :user }

  it "has a valid factory" do
    expect(post).to be_valid
  end

  context "when a user upvotes the post" do
    before { post.upvote_from user }

    it "has a vote score of 1" do
      expect(post.weighted_score).to eq(1)
    end

    it "the user is registered as an upvoter" do
      expect(post.votes_for.up.by_type(User).voters).to include(user)
    end

    it "the user may not upvote again" do
      expect { post.upvote_from user }
        .not_to change(post, :weighted_score)
    end

    it "can be incremented by a second user" do
      second_user = create :user
      expect { post.upvote_from second_user }
        .to change(post, :weighted_score).from(1).to(2)
    end

    it "can be nullified by a second user downvoting" do
      second_user = create :user
      expect { post.downvote_from second_user }
        .to change(post, :weighted_score).from(1).to(0)
    end
  end

  context "when a user downvotes the post" do
    before { post.downvote_from user }

    it "has a vote score of -1" do
      expect(post.weighted_score).to eq(-1)
    end

    it "the user is registered as an downvoter" do
      expect(post.votes_for.down.by_type(User).voters).to include(user)
    end

    it "the user may not downvote again" do
      expect { post.downvote_from user }
        .not_to change(post, :weighted_score)
    end
  end
end
