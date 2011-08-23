require 'spec_helper'

describe User do

  context "first_name" do
    before(:each) do
      @user = Factory(:user)
    end

    it "should have a first_name attr" do
      @user.first_name = 'Rodri'
      @user.first_name.should ==  'Rodri'
    end
  end

  it "should have a last_name attr" do
    user = User.new :last_name => 'Rodri'
    user.last_name.should ==  'Rodri'
  end

  it { should validate_presence_of(:first_name) }

  describe '#push' do
    it 'should update pushed_at field when its called' do
      Timecop.freeze
      subject.push
      subject.pushed_at.should == DateTime.now
    end
  end


end

# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  age        :integer
#  created_at :datetime
#  updated_at :datetime
#  pushed_at  :datetime
#

