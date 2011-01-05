require File.expand_path(File.dirname(__FILE__) + "/../../lib/fib_trib")

describe FibTrib do
  
  before(:each) do
    @fib = FibTrib.new
  end
  
  context "fibonacci sequence" do
    
    it "should return 1 when no arguments are passed" do
      @fib.fibonacci.should == 1
    end
    
    it "should return 1 when 1 is passed as an argument" do
      @fib.fibonacci(1).should == 1
    end
    
    it "should return 2 when 2 is passed as an argument" do
      @fib.fibonacci(2).should == 2
    end
    
    it "should return 3 when 3 is passed as an argument" do
      @fib.fibonacci(3).should == 3
    end
    
    it "should return 5 when 4 is passed as an argument" do
      @fib.fibonacci(4).should == 5
    end
    
    it "should return 8 when 5 is passed as an argument" do
      @fib.fibonacci(5).should == 8
    end
    
    it "should return 13 when 6 is passed as an argument" do
      @fib.fibonacci(6).should == 13
    end
    
    it "should return 21 when 7 is passed as an argument" do
      @fib.fibonacci(7).should == 21
    end
  end

  context "tribonacci sequence" do
    it "should return 1 when no arguments are passed" do
      @fib.tribonacci.should == 1
    end
    
    it "should return 1 when 1 is passed as an argument" do
      @fib.tribonacci(1).should == 1
    end
    
    it "should return 2 when 2 is passed as an argument" do
      @fib.tribonacci(2).should == 2
    end
    
    it "should return 4 when 3 is passed as an argument" do
      @fib.tribonacci(3).should == 4
    end
    
    it "should return 7 when 4 is passed as an argument" do
      @fib.tribonacci(4).should == 7
    end
    
    it "should return 13 when 5 is passed as an argument" do
      @fib.tribonacci(5).should == 13
    end
  end

  
end