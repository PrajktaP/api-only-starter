# frozen_string_literal: true

FactoryBot.define do
  factory(:tag) do
    name { Faker::Lorem.word }
    tag_type { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
  end
end
