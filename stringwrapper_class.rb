RSpec.describe StringWrapper do
    describe "#reverse" do
      it "reverses the string" do
        str_wrapper = StringWrapper.new("hello")
        expect(str_wrapper.reverse).to eq("olleh")
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        str_wrapper = StringWrapper.new("hello")
        expect(str_wrapper.upcase).to eq("HELLO")
      end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        str_wrapper = StringWrapper.new("HELLO")
        expect(str_wrapper.downcase).to eq("hello")
      end
    end
  end