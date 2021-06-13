class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  acts_as_voter

  def upvote!(obj)
    if voted_up_for? obj
      unlike obj
    else
      upvotes obj
    end
  end

  def downvote!(obj)
    if voted_down_for? obj
      unlike obj
    else
      downvotes obj
    end
  end
end
