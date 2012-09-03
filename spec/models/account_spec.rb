require 'spec_helper'
require 'cancan/matchers'

describe Account do

  describe "attributes" do
    it { should respond_to(:email) }
    it { should respond_to(:password) }
    it { should respond_to(:password_confirmation) }
    it { should respond_to(:role) }
  end

  describe "abilities" do
    subject { ability }
    let(:ability) { Ability.new(account) }

    describe "as anonymous (nil) account" do
      let(:account) { nil }
      it { should be_able_to(:read, Speech) }
      it { should_not be_able_to(:create, Interpretation) }
      it { should_not be_able_to(:create, Interpretation) }
    end

    describe "as authenticated account" do
      let(:account) { a = Account.new }

      describe "as interpreter" do
        before { account.role = :interpreter }
        it { should be_able_to(:create, Interpretation) }
      end

      pending "as speech creator"
      pending "as speech admin"
      pending "as sys admin"
    end
  end
end