class Comment < ApplicationRecord
  belongs_to :student, optional: true
end
