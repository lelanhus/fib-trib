require File.expand_path(File.dirname(__FILE__) + "/../../lib/fib_trib")

describe FibTrib do
  
  before(:each) do
    @fib = FibTrib.new
  end
  
  context "fibonacci sequence" do
    
    it "#sequence should return 1 when no arguments are passed" do
      @fib.sequence(0).should == 1
    end
    
    it "#sequence should return 1 when pos = 1" do
      @fib.sequence(0, 1).should == 1
    end
    
    it "#sequence should return 2 when pos = 2" do
      @fib.sequence(0,2).should == 2
    end
    
    it "#sequence should return 3 when pos = 3" do
      @fib.sequence(0,3).should == 3
    end
    
    it "#sequence should return 5 when pos = 4" do
      @fib.sequence(0,4).should == 5
    end
    
    it "#sequence should return 8 when pos = 5" do
      @fib.sequence(0,5).should == 8
    end
    
    it "#sequence should return 13 when pos = 6" do
      @fib.sequence(0,6).should == 13
    end
    
    it "#sequence should return 21 when pos = 7" do
      @fib.sequence(0,7).should == 21
    end
  end

  context "tribonacci sequence" do
    it "#sequence should return 1 when n = 1" do
      @fib.sequence(1, 1).should == 1
    end
    
    it "#sequence should return 1 when n = 1 and pos = 1" do
      @fib.sequence(1, 1).should == 1
    end
    
    it "#sequence should return 2 when n = 1 and pos = 2" do
      @fib.sequence(1,2).should == 2
    end
    
    it "#sequence should return 4 when n = 1 and pos = 3" do
      @fib.sequence(1,3).should == 4
    end
    
    it "#sequence should return 7 when n = 1 and pos = 4" do
      @fib.sequence(1,4).should == 7
    end
    
    it "#sequence should return 13 when n = 1 and pos = 5" do
      @fib.sequence(1,5).should == 13
    end
  end

  context "quadronacci sequence" do
    it "#sequence should return 1 when n = 2" do
      @fib.sequence(2).should == 1
    end
    
    it "#sequence should return 1 when n = 2 and pos = 1" do
      @fib.sequence(2,1).should == 1
    end
    
    it "#sequence should return 2 when n = 2 and pos = 2" do
      @fib.sequence(2,2).should == 2
    end
    
    it "#sequence should return 4 when n = 2 and pos = 3" do
      @fib.sequence(2,3).should == 4
    end
    
    it "#sequence should return 8 when n = 2 and pos = 4" do
      @fib.sequence(2,4).should == 8
    end
    
    it "#sequence should return 15 when n = 2 and pos = 5" do
      @fib.sequence(2,5).should == 15
    end

  end
end