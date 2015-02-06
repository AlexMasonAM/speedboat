# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.cell_phone }
  
    factory :customer_with_speedboats do
      ignore do
        boat_count 10
      end

      after(:create) do |customer, evaluator|
        create_list(:sale_reciept, evaluator.boat_count, customer: customer, speedboat: FactoryGirl.create(:speedboat))
      end
    end
  end
end
