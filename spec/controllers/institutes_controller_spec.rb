require 'rails_helper'

RSpec.describe InstitutesController, type: :controller do
  let(:institute) { create(:institute) }
  
  describe 'GET #index' do
    subject { get :index }

    it { is_expected.to have_http_status(:ok) }
    it { is_expected.to render_template(:index) }

    it 'assigns the list of institutes to @institutes' do
      subject
      expect(assigns(:institutes)).to eq [institute]
    end
  end
end
