class Student < ApplicationRecord
    belongs_to :course, optional: true 
    has_many :comments
end
