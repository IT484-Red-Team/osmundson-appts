FactoryBot.define do
    factory :minimal_user, :class => User do |u|
        u.email {'1234@email.com'}
        u.password {'password'}
    end
end