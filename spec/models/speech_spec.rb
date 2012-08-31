require 'spec_helper'

describe Speech do

  before { @speech = Speech.new(topic: "Immigration", context: "Closing the borders.  Good idea, bad idea?")}

  subject { @speech }

  it { should respond_to(:topic) }
  it { should respond_to(:context) }
end