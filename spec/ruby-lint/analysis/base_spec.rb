require 'spec_helper'

describe RubyLint::Analysis::Base do
  example 'require a VM' do
    lambda { RubyLint::Analysis::Base.new }.should raise_error(ArgumentError)

    vm  = RubyLint::VirtualMachine.new
    blk = lambda { RubyLint::Analysis::Base.new(:vm => vm) }

    blk.should_not raise_error
  end
end
