class Course < ApplicationRecord
    has_many :students
    validates :course_name, presence: true, length: { minimum: 5 }
    validates :duration, presence: true
end
