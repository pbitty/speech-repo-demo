require 'spec_helper'

describe "Speech pages" do

  subject { page }

  describe "index page" do
    before { visit speeches_path }

    it { should have_selector('.active a', text: 'Speeches') }
    it { should have_selector('h1', text: 'Speeches') }

    describe "contents" do
      before { Speech.create!(topic: "aaa", context: "bbb") }

      it "should have all headings" do
        headings = %w(Language Setting Topic)

        headings.each do |heading|
          should have_selector('.speech', heading)
        end
      end
    end

    # TODO Write test checking for actual list of speeches
  end

end