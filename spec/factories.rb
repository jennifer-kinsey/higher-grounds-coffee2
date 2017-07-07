FactoryGirl.define do
  factory :user do
    email 'test@example.com'
    password '123456'
  end

  factory :admin, class: User do
    email "admin@test.com"
    password "admin123"
    admin true
  end

  factory :product, class: Product do
    name "Test Name"
    description "Test Decription"
    price "12.00"
    image "http://sawadacoffee.com/wp-content/uploads/Sawada-Coffee-10DEC2015-003.jpg"
    origin "Test Origin"
    variety "Test Variety"
  end

  factory :review, class: Review do
    author "Test Author"
    content "Test Content"
    product
  end
end
