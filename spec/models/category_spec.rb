require "rails_helper"
require 'spec_helper'

RSpec.describe Category, :type => :model do

  let(:category) {FactoryGirl.build(:category)}

  context "Factory settings for category" do
    it "should validate the category factories" do
      expect(FactoryGirl.build(:category).valid?).to be true
    end
  end

  describe Category do
    it { should validate_presence_of :itemname}
  end
end