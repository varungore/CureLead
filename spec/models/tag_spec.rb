require 'spec_helper'

describe Tag do
  describe 'associations' do 
    it { should have_and_belong_to_many(:posts) }
  end
end
