# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  instructor_id :integer
#  prereq_id     :integer
#
class Course < ApplicationRecord
   
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Enrollment

        # enrolled_students
    
    has_many :enrolled_students,
        through: :enrollments,
        source: :user

        belongs_to :prerequisite,
        primary_key: :id,
        foreign_key: :prereq_id,
        class_name: :Course,   #do we put course or do we pot self
        optional: true 

        belongs_to :instructor,
        primary_key: :id,
        foreign_key: :instructor_id,
        class_name: :User

       

        

            # belong to goes to enrollments that is the link 
    
    # This should return a course's prereq (if it has one).
    


end
