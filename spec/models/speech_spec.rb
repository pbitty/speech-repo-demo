require 'spec_helper'

describe Speech do

  before { @speech = Speech.new(topic: "Immigration", context: "Closing the borders.  Good idea, bad idea?") }

  subject { @speech }

  it { should respond_to(:topic) }
  it { should respond_to(:context) }
  it { should respond_to(:language) }
  it { should respond_to(:setting) }
  it { should respond_to(:difficulty) }
  it { should respond_to(:speed) }

end