class Post < ApplicationRecord
  acts_as_votable
  broadcasts
end
