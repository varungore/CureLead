require 'spec_helper'

describe Image do
  describe 'validations' do 
    it { should validate_presence_of(:post_id) }
    it { should validate_presence_of(:url)}
  end

  describe '#url_size' do 
    let(:image) {FactoryGirl.create(:image)}
    %w(100 200 300 400 500 600 700 800 900).each do |size|
      it "should allow for variable sizes, including #{size}" do
        target_url = image.url + "/convert?rotate=0&w=#{size}&h=#{size}&fit=max" 
        expect(image.url_size(size)).to eq target_url
      end
    end
  end
end
