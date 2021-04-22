require 'rails_helper'

RSpec.describe Institute, type: :model do
  subject { institute }

  context 'when all fields contain valid values' do
    let(:institute) { build(:institute,
      name: 'Absolutely Awesome Academy') }
    
    it { is_expected.to be_valid }
  end

  context 'when fields have invalid values' do
    let(:institute) { build(:institute) }

    it 'has an error for a blank name' do
      subject.name = ''

      subject.valid?

      expect(subject.errors[:name].count).to be > 0
    end
  end
end
