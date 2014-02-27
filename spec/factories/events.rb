# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "MyString"
    date_start "2014-02-27 18:14:32"
    description "MyText"
  end
end
