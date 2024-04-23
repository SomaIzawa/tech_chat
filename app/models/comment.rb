class Comment < ApplicationRecord
  belongs_to :questions
  belongs_to :user
end
