class Course < ApplicationRecord
    has_many :students ,dependent: :destroy
    validates :course_name, presence: true, length: { minimum: 5 }
    validates :duration, presence: true
    validates_associated :students



    before_validation :normalize_name, on: :create
    after_commit :general_commit , on: :update


    
    
    private
    def normalize_name
      self.course_name = course_name.titleize
    end

    def general_commit
      flash[:alert] = "creating  new course ."
        
        
    end
 
end
