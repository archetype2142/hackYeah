class Post < ApplicationRecord
  belongs_to :user, optional: true

  enum promotion: %i[ not_promotional promotional ]
end