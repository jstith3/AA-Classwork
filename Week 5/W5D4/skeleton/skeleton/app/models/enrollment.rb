# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :integer
#  student_id :integer
#
# create_table "enrollments", force: :cascade do |t|
#     t.integer "course_id"
#     t.integer "student_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false

class Enrollment < ApplicationRecord
    belongs_to :course,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Course

    belongs_to :user,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :User
end
