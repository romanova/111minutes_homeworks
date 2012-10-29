require 'spec_helper'

describe NumberTests do
  before(:all) do
  	@number1 = NumberTests.new(3, 4)
  	@number2 = NumberTests.new(2, 1)
  	@zero = NumberTests.new(0, 0)
  end

  it 'has a real part' do
  	@number1.real.should eq 3
  end

  it 'has a imaginery part' do
  	@number1.imaginary.should eq 4
  end

  it 'adds and returns result' do
  	(@number1 + @number2).should eq NumberTests.new(5, 5)
  end

  it 'subtracts and returns result' do
  	(@number1 - @number2).should eq NumberTests.new(1, 3)
  end

  it 'multiplies and returns result' do
  	(@number1 * @number2).should eq NumberTests.new(2, 11)
  end 

  it 'divides and returns result' do
  	(@number1 / @number2).should eq NumberTests.new(2, 1)
  end

  it 'raises error when dividing by zero' do
  	expect {@number1 / @zero}.to raise_error
  end

end
