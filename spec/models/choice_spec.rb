require 'spec_helper'

describe Choice do

  before { @choice = Choice.new }
  subject { @choice }

  describe "should have required attributes" do
    it { should respond_to(:name) }
    it { should respond_to(:description) }
  end

end