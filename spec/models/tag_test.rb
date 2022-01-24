# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tag, type: :model do
  subject { FactoryBot.build(:tag) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of(:name).scoped_to(:tag_type) }
    it { should validate_presence_of :tag_type }
    it { should validate_presence_of :description }
  end
end
