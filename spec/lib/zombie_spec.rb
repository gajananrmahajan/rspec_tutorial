require 'spec_helper'
require_relative 'zombie'

describe Zombie do
	it 'is Ash' do
		zombie = Zombie.new
		zombie.name.should == 'Ash'
	end
end
