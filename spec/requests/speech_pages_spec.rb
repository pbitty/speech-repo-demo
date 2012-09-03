require 'spec_helper'

describe "Speech pages" do

  subject { page }

  describe "index page" do
    before { visit speeches_path }

    it { should have_selector('.active a', text: 'Speeches') }
    it { should have_selector('h1', text: 'Speeches') }

    describe "contents" do
      before { Speech.create!(topic: "aaa", context: "bbb") }

      %w(Language Setting Topic).each do |heading|
        it "should have heading: #{heading}" do
          should have_selector('.speech', heading)
        end
      end

    end
    # TODO Write test checking for actual list of speeches
  end
end