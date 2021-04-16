require 'rails_helper'

RSpec.describe Course, type: :model do
  subject { course }
  context 'all fields contain valid values' do
    let(:course) { build(:course, name: 'Intro to Valid Course Names 101', description: 'A fabulous course that everybody should do.', number_of_semesters: 2, start_date: Date.new(2020, 1, 1),  end_date: Date.new(2020, 12, 31), allocation: 98) }
    
    it { is_expected.to be_valid }
  end
  context 'has fields that contain invalid values' do
    let(:course) { build(:course, name: nil, description: 'A terrible course with lots of problems.', number_of_semesters: -2, start_date: nil,  end_date: nil, allocation: -2) }

    it { is_expected.to be_invalid }

    it 'has the expected validation errors' do
      subject.valid?
      expect(subject.errors[:name].count).to be > 0
      expect(subject.errors[:number_of_semesters].count).to be > 0
      expect(subject.errors[:start_date].count).to be > 0
      expect(subject.errors[:end_date].count).to be > 0
      expect(subject.errors[:allocation].count).to be > 0
      # Description has no validation requirements
      expect(subject.errors[:description].count).to be == 0
    end
  end
end
