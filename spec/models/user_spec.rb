require "rails_helper"

RSpec.describe User, type: :model do
  subject(:user) { create :user }

  let(:post) { create :post }

  it "has a valid factory" do
    expect(user).to be_valid
  end

  describe "#upvote!" do
    it "will upvote a post" do
      user.upvote! post
      expect(post.weighted_score).to eq(1)
    end

    context "when user has already upvoted a post" do
      before { user.upvote! post }

      it "will remove the upvote" do
        user.upvote! post
        expect(post.weighted_score).to eq(0)
      end
    end

    context "when user has already downvoted a post" do
      before { user.downvote! post }

      it "will convert to an upvote" do
        user.upvote! post
        expect(post.weighted_score).to eq(1)
      end
    end
  end

  describe "#downvote!" do
    it "will downvote a post" do
      user.downvote! post
      expect(post.weighted_score).to eq(-1)
    end

    context "when user has already downvoted a post" do
      before { user.downvote! post }

      it "will remove the downvote" do
        user.downvote! post
        expect(post.weighted_score).to eq(0)
      end
    end

    context "when user has already upvoted a post" do
      before { user.upvote! post }

      it "will convert to a downvote" do
        user.downvote! post
        expect(post.weighted_score).to eq(-1)
      end
    end
  end
end
