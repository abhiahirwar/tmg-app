FactoryGirl.define do
  factory :user do
    factory :admin do
      username "abhiahirwar"
      mobile "0433581756"
      email "student_test@gmail.com"
      role  "admin"
      password "password"
      password_confirmation "password"
      confirmed_at Date.today
    end

    factory :student_user do
      username "student"
      mobile "0433581356"
      email "student_test2@gmail.com"
      role  "user"
      password "password"
      password_confirmation "password"
      confirmed_at Date.today
    end
  end
end
