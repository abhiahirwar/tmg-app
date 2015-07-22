FactoryGirl.define do
  factory :enrolment do
    # course.association :course
    # course_category_id.association 1
    delivery_mode "MyString"
    # student.association :student
    # address.association :address
    employer nil
    # emergency_contact.association :emergency_contact
    language_culture_diversity nil
    school nil
    employment nil
    vic_student nil
    completed_qualification "MyString"
    qualification_received_location "MyString"
    vet "MyString"
    toc "1"
    association :course, factory: :course
    association :course_category, factory: :course_category
    association :address, factory: :address
    association :emergency_contact, factory: :emergency_contact
    association :emergency_contact1, factory: :emergency_contact
    association :student, factory: :student
  end

end
